.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# instance fields
.field public A:F

.field public final B:[I

.field public C:F

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public final I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final Q:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final R:Ljava/util/ArrayList;

.field public final S:[Z

.field public final T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public V:I

.field public W:I

.field public X:F

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public b0:I

.field public c:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public c0:I

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

.field public d0:I

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

.field public e0:F

.field public final f:[Z

.field public f0:F

.field public g:Z

.field public g0:Landroid/view/View;

.field public h:I

.field public h0:I

.field public i:I

.field public i0:Ljava/lang/String;

.field public j:Z

.field public j0:I

.field public k:Z

.field public k0:I

.field public l:Z

.field public final l0:[F

.field public m:Z

.field public final m0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public n:I

.field public final n0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public o:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public r:I

.field public final s:[I

.field public t:I

.field public u:I

.field public v:F

.field public w:I

.field public x:I

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 11
    .line 12
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    new-array v4, v3, [Z

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:I

    .line 27
    .line 28
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 29
    .line 30
    new-instance v6, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 36
    .line 37
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 38
    .line 39
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 42
    .line 43
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:I

    .line 44
    .line 45
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:I

    .line 46
    .line 47
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 48
    .line 49
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 50
    .line 51
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 52
    .line 53
    new-array v6, v3, [I

    .line 54
    .line 55
    iput-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:[I

    .line 56
    .line 57
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 58
    .line 59
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 60
    .line 61
    const/high16 v6, 0x3f800000    # 1.0f

    .line 62
    .line 63
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:F

    .line 64
    .line 65
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 66
    .line 67
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 68
    .line 69
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:F

    .line 70
    .line 71
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 72
    .line 73
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 74
    .line 75
    const v6, 0x7fffffff

    .line 76
    .line 77
    .line 78
    filled-new-array {v6, v6}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iput-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 86
    .line 87
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 88
    .line 89
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 90
    .line 91
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:I

    .line 92
    .line 93
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:I

    .line 94
    .line 95
    new-instance v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 96
    .line 97
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 98
    .line 99
    invoke-direct {v7, v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 100
    .line 101
    .line 102
    iput-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 103
    .line 104
    new-instance v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 105
    .line 106
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 107
    .line 108
    invoke-direct {v8, v0, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 109
    .line 110
    .line 111
    iput-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 112
    .line 113
    new-instance v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 114
    .line 115
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 116
    .line 117
    invoke-direct {v9, v0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 118
    .line 119
    .line 120
    iput-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 121
    .line 122
    new-instance v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    .line 124
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 125
    .line 126
    invoke-direct {v10, v0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 127
    .line 128
    .line 129
    iput-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 130
    .line 131
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 132
    .line 133
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 134
    .line 135
    invoke-direct {v11, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 136
    .line 137
    .line 138
    iput-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 139
    .line 140
    new-instance v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 141
    .line 142
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 143
    .line 144
    invoke-direct {v12, v0, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 145
    .line 146
    .line 147
    iput-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 148
    .line 149
    new-instance v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 150
    .line 151
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->l:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 152
    .line 153
    invoke-direct {v13, v0, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 154
    .line 155
    .line 156
    iput-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 157
    .line 158
    new-instance v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 159
    .line 160
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 161
    .line 162
    invoke-direct {v14, v0, v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 163
    .line 164
    .line 165
    iput-object v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 166
    .line 167
    const/4 v15, 0x6

    .line 168
    new-array v15, v15, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 169
    .line 170
    aput-object v7, v15, v1

    .line 171
    .line 172
    aput-object v9, v15, v4

    .line 173
    .line 174
    aput-object v8, v15, v3

    .line 175
    .line 176
    const/16 v16, 0x3

    .line 177
    .line 178
    aput-object v10, v15, v16

    .line 179
    .line 180
    const/16 v16, 0x4

    .line 181
    .line 182
    aput-object v11, v15, v16

    .line 183
    .line 184
    const/16 v16, 0x5

    .line 185
    .line 186
    aput-object v14, v15, v16

    .line 187
    .line 188
    iput-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 189
    .line 190
    new-instance v15, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Ljava/util/ArrayList;

    .line 196
    .line 197
    move/from16 v16, v4

    .line 198
    .line 199
    new-array v4, v3, [Z

    .line 200
    .line 201
    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Z

    .line 202
    .line 203
    new-array v4, v3, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 204
    .line 205
    sget-object v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 206
    .line 207
    aput-object v17, v4, v1

    .line 208
    .line 209
    aput-object v17, v4, v16

    .line 210
    .line 211
    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 212
    .line 213
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 214
    .line 215
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 216
    .line 217
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 218
    .line 219
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 220
    .line 221
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 222
    .line 223
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 224
    .line 225
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 226
    .line 227
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 228
    .line 229
    const/high16 v4, 0x3f000000    # 0.5f

    .line 230
    .line 231
    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 232
    .line 233
    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 234
    .line 235
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 236
    .line 237
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/String;

    .line 238
    .line 239
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 240
    .line 241
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    .line 242
    .line 243
    new-array v4, v3, [F

    .line 244
    .line 245
    fill-array-data v4, :array_1

    .line 246
    .line 247
    .line 248
    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:[F

    .line 249
    .line 250
    new-array v4, v3, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 251
    .line 252
    aput-object v2, v4, v1

    .line 253
    .line 254
    aput-object v2, v4, v16

    .line 255
    .line 256
    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 257
    .line 258
    new-array v3, v3, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 259
    .line 260
    aput-object v2, v3, v1

    .line 261
    .line 262
    aput-object v2, v3, v16

    .line 263
    .line 264
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 265
    .line 266
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:I

    .line 267
    .line 268
    iput v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:I

    .line 269
    .line 270
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    nop

    .line 301
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 49
    .line 50
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 56
    .line 57
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 58
    .line 59
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 60
    .line 61
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 62
    .line 63
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 64
    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 66
    .line 67
    const/high16 v3, 0x3f000000    # 0.5f

    .line 68
    .line 69
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 70
    .line 71
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    aput-object v4, v3, v2

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    aput-object v4, v3, v5

    .line 81
    .line 82
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:Landroid/view/View;

    .line 83
    .line 84
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 85
    .line 86
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 87
    .line 88
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:[F

    .line 91
    .line 92
    const/high16 v3, -0x40800000    # -1.0f

    .line 93
    .line 94
    aput v3, v0, v2

    .line 95
    .line 96
    aput v3, v0, v5

    .line 97
    .line 98
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:I

    .line 99
    .line 100
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:I

    .line 101
    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 103
    .line 104
    const v3, 0x7fffffff

    .line 105
    .line 106
    .line 107
    aput v3, v0, v2

    .line 108
    .line 109
    aput v3, v0, v5

    .line 110
    .line 111
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 112
    .line 113
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 114
    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    .line 116
    .line 117
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:F

    .line 118
    .line 119
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:F

    .line 120
    .line 121
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 122
    .line 123
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 124
    .line 125
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 126
    .line 127
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 128
    .line 129
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 130
    .line 131
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 134
    .line 135
    aput-boolean v5, v0, v2

    .line 136
    .line 137
    aput-boolean v5, v0, v5

    .line 138
    .line 139
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Z

    .line 142
    .line 143
    aput-boolean v2, v0, v2

    .line 144
    .line 145
    aput-boolean v2, v0, v5

    .line 146
    .line 147
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 148
    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:[I

    .line 150
    .line 151
    aput v2, v0, v2

    .line 152
    .line 153
    aput v2, v0, v5

    .line 154
    .line 155
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:I

    .line 156
    .line 157
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 158
    .line 159
    return-void
.end method

.method public final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final C()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    .line 25
    iput-boolean v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 26
    .line 27
    iput v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b:I

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public D(Landroidx/constraintlayout/core/Cache;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->k()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final E(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 9
    .line 10
    return-void
.end method

.method public final F(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 14
    .line 15
    .line 16
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 17
    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 23
    .line 24
    return-void
.end method

.method public final G(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 14
    .line 15
    .line 16
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 17
    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 20
    .line 21
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 26
    .line 27
    add-int/2addr p1, p2

    .line 28
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 35
    .line 36
    return-void
.end method

.method public final H(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput-object p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public final J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput-object p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public final K(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public L(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 4
    .line 5
    and-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 7
    .line 8
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 9
    .line 10
    and-int/2addr p2, v2

    .line 11
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 12
    .line 13
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 16
    .line 17
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 20
    .line 21
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 24
    .line 25
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 26
    .line 27
    sub-int v4, v0, v2

    .line 28
    .line 29
    sub-int v5, v1, v3

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-ltz v4, :cond_0

    .line 33
    .line 34
    if-ltz v5, :cond_0

    .line 35
    .line 36
    const/high16 v4, -0x80000000

    .line 37
    .line 38
    if-eq v2, v4, :cond_0

    .line 39
    .line 40
    const v5, 0x7fffffff

    .line 41
    .line 42
    .line 43
    if-eq v2, v5, :cond_0

    .line 44
    .line 45
    if-eq v3, v4, :cond_0

    .line 46
    .line 47
    if-eq v3, v5, :cond_0

    .line 48
    .line 49
    if-eq v0, v4, :cond_0

    .line 50
    .line 51
    if-eq v0, v5, :cond_0

    .line 52
    .line 53
    if-eq v1, v4, :cond_0

    .line 54
    .line 55
    if-ne v1, v5, :cond_1

    .line 56
    .line 57
    :cond_0
    move v0, v6

    .line 58
    move v1, v0

    .line 59
    move v2, v1

    .line 60
    move v3, v2

    .line 61
    :cond_1
    sub-int/2addr v0, v2

    .line 62
    sub-int/2addr v1, v3

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 66
    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 68
    .line 69
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 70
    .line 71
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 72
    .line 73
    const/16 v3, 0x8

    .line 74
    .line 75
    if-ne v2, v3, :cond_4

    .line 76
    .line 77
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 78
    .line 79
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 87
    .line 88
    aget-object p1, p1, v6

    .line 89
    .line 90
    if-ne p1, v2, :cond_5

    .line 91
    .line 92
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 93
    .line 94
    if-ge v0, p1, :cond_5

    .line 95
    .line 96
    move v0, p1

    .line 97
    :cond_5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 98
    .line 99
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 100
    .line 101
    if-ge v0, p1, :cond_6

    .line 102
    .line 103
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 104
    .line 105
    :cond_6
    if-eqz p2, :cond_8

    .line 106
    .line 107
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 108
    .line 109
    const/4 p2, 0x1

    .line 110
    aget-object p1, p1, p2

    .line 111
    .line 112
    if-ne p1, v2, :cond_7

    .line 113
    .line 114
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 115
    .line 116
    if-ge v1, p1, :cond_7

    .line 117
    .line 118
    move v1, p1

    .line 119
    :cond_7
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 120
    .line 121
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 122
    .line 123
    if-ge v1, p1, :cond_8

    .line 124
    .line 125
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 126
    .line 127
    :cond_8
    return-void
.end method

.method public M(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/constraintlayout/core/LinearSystem;->n(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/constraintlayout/core/LinearSystem;->n(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/constraintlayout/core/LinearSystem;->n(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    invoke-static {v2}, Landroidx/constraintlayout/core/LinearSystem;->n(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 35
    .line 36
    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 41
    .line 42
    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    iget p1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 47
    .line 48
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 49
    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 57
    .line 58
    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 63
    .line 64
    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    iget v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 69
    .line 70
    iget v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 71
    .line 72
    :cond_1
    sub-int p2, v1, p1

    .line 73
    .line 74
    sub-int v3, v2, v0

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    if-ltz p2, :cond_2

    .line 78
    .line 79
    if-ltz v3, :cond_2

    .line 80
    .line 81
    const/high16 p2, -0x80000000

    .line 82
    .line 83
    if-eq p1, p2, :cond_2

    .line 84
    .line 85
    const v3, 0x7fffffff

    .line 86
    .line 87
    .line 88
    if-eq p1, v3, :cond_2

    .line 89
    .line 90
    if-eq v0, p2, :cond_2

    .line 91
    .line 92
    if-eq v0, v3, :cond_2

    .line 93
    .line 94
    if-eq v1, p2, :cond_2

    .line 95
    .line 96
    if-eq v1, v3, :cond_2

    .line 97
    .line 98
    if-eq v2, p2, :cond_2

    .line 99
    .line 100
    if-ne v2, v3, :cond_3

    .line 101
    .line 102
    :cond_2
    move p1, v4

    .line 103
    move v0, p1

    .line 104
    move v1, v0

    .line 105
    move v2, v1

    .line 106
    :cond_3
    sub-int/2addr v1, p1

    .line 107
    sub-int/2addr v2, v0

    .line 108
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 109
    .line 110
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 111
    .line 112
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 113
    .line 114
    const/16 p2, 0x8

    .line 115
    .line 116
    if-ne p1, p2, :cond_4

    .line 117
    .line 118
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 119
    .line 120
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 121
    .line 122
    return-void

    .line 123
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 124
    .line 125
    aget-object p2, p1, v4

    .line 126
    .line 127
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 128
    .line 129
    if-ne p2, v0, :cond_5

    .line 130
    .line 131
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 132
    .line 133
    if-ge v1, v3, :cond_5

    .line 134
    .line 135
    move v1, v3

    .line 136
    :cond_5
    const/4 v3, 0x1

    .line 137
    aget-object p1, p1, v3

    .line 138
    .line 139
    if-ne p1, v0, :cond_6

    .line 140
    .line 141
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 142
    .line 143
    if-ge v2, p1, :cond_6

    .line 144
    .line 145
    move v2, p1

    .line 146
    :cond_6
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 147
    .line 148
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 149
    .line 150
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 151
    .line 152
    if-ge v2, p1, :cond_7

    .line 153
    .line 154
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 155
    .line 156
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 157
    .line 158
    if-ge v1, p1, :cond_8

    .line 159
    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 161
    .line 162
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 163
    .line 164
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 165
    .line 166
    if-lez p1, :cond_9

    .line 167
    .line 168
    if-ne p2, v0, :cond_9

    .line 169
    .line 170
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 171
    .line 172
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 177
    .line 178
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 179
    .line 180
    if-lez p1, :cond_a

    .line 181
    .line 182
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 183
    .line 184
    aget-object p2, p2, v3

    .line 185
    .line 186
    if-ne p2, v0, :cond_a

    .line 187
    .line 188
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 189
    .line 190
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 195
    .line 196
    :cond_a
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 197
    .line 198
    if-eq v1, p1, :cond_b

    .line 199
    .line 200
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:I

    .line 201
    .line 202
    :cond_b
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 203
    .line 204
    if-eq v2, p1, :cond_c

    .line 205
    .line 206
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    .line 207
    .line 208
    :cond_c
    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/core/widgets/Optimizer;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x40

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-nez p4, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    move-object v2, p1

    .line 54
    move-object v3, p2

    .line 55
    move-object v4, p3

    .line 56
    move v5, p4

    .line 57
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    move-object v2, p1

    .line 87
    move-object v3, p2

    .line 88
    move-object v4, p3

    .line 89
    move v5, p4

    .line 90
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 115
    .line 116
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    move-object v2, p1

    .line 120
    move-object v3, p2

    .line 121
    move-object v4, p3

    .line 122
    move v5, p4

    .line 123
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 128
    .line 129
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 148
    .line 149
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 150
    .line 151
    const/4 v6, 0x1

    .line 152
    move-object v2, p1

    .line 153
    move-object v3, p2

    .line 154
    move-object v4, p3

    .line 155
    move v5, p4

    .line 156
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 161
    .line 162
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 163
    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 181
    .line 182
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    .line 184
    const/4 v6, 0x1

    .line 185
    move-object v2, p1

    .line 186
    move-object v3, p2

    .line 187
    move-object v4, p3

    .line 188
    move v5, p4

    .line 189
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    throw v0

    .line 195
    :cond_6
    :goto_5
    return-void
.end method

.method public c(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 59

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    .line 25
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 30
    .line 31
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 36
    .line 37
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    const/4 v15, 0x1

    .line 40
    if-eqz v12, :cond_5

    .line 41
    .line 42
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    aget-object v13, v12, v18

    .line 47
    .line 48
    if-ne v13, v14, :cond_0

    .line 49
    .line 50
    move v13, v15

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move/from16 v13, v18

    .line 53
    .line 54
    :goto_0
    aget-object v12, v12, v15

    .line 55
    .line 56
    if-ne v12, v14, :cond_1

    .line 57
    .line 58
    move/from16 v19, v15

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move/from16 v19, v18

    .line 62
    .line 63
    :goto_1
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 64
    .line 65
    if-eq v12, v15, :cond_4

    .line 66
    .line 67
    move/from16 v20, v15

    .line 68
    .line 69
    const/4 v15, 0x2

    .line 70
    if-eq v12, v15, :cond_3

    .line 71
    .line 72
    const/4 v15, 0x3

    .line 73
    if-eq v12, v15, :cond_2

    .line 74
    .line 75
    :goto_2
    move/from16 v12, v19

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_2
    :goto_3
    move/from16 v12, v18

    .line 79
    .line 80
    move v13, v12

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    move/from16 v13, v18

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move/from16 v20, v15

    .line 86
    .line 87
    move/from16 v12, v18

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move/from16 v20, v15

    .line 91
    .line 92
    const/16 v18, 0x0

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_4
    iget v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 96
    .line 97
    move/from16 v19, v12

    .line 98
    .line 99
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Z

    .line 100
    .line 101
    move-object/from16 v21, v12

    .line 102
    .line 103
    const/16 v12, 0x8

    .line 104
    .line 105
    if-ne v15, v12, :cond_9

    .line 106
    .line 107
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    move/from16 v23, v13

    .line 114
    .line 115
    move/from16 v13, v18

    .line 116
    .line 117
    :goto_5
    if-ge v13, v12, :cond_8

    .line 118
    .line 119
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v24

    .line 123
    move/from16 v25, v12

    .line 124
    .line 125
    move-object/from16 v12, v24

    .line 126
    .line 127
    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 128
    .line 129
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 130
    .line 131
    if-nez v12, :cond_6

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_6
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-lez v12, :cond_7

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_7
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 142
    .line 143
    move/from16 v12, v25

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_8
    aget-boolean v12, v21, v18

    .line 147
    .line 148
    if-nez v12, :cond_a

    .line 149
    .line 150
    aget-boolean v12, v21, v20

    .line 151
    .line 152
    if-nez v12, :cond_a

    .line 153
    .line 154
    return-void

    .line 155
    :cond_9
    move/from16 v23, v13

    .line 156
    .line 157
    :cond_a
    :goto_7
    iget-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 158
    .line 159
    if-nez v12, :cond_b

    .line 160
    .line 161
    iget-boolean v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 162
    .line 163
    if-eqz v13, :cond_16

    .line 164
    .line 165
    :cond_b
    if-eqz v12, :cond_f

    .line 166
    .line 167
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 168
    .line 169
    invoke-virtual {v1, v3, v12}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 170
    .line 171
    .line 172
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 173
    .line 174
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 175
    .line 176
    add-int/2addr v12, v13

    .line 177
    invoke-virtual {v1, v5, v12}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 178
    .line 179
    .line 180
    if-eqz v23, :cond_f

    .line 181
    .line 182
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    .line 184
    if-eqz v12, :cond_f

    .line 185
    .line 186
    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 187
    .line 188
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:Ljava/lang/ref/WeakReference;

    .line 189
    .line 190
    if-eqz v13, :cond_c

    .line 191
    .line 192
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    if-eqz v13, :cond_c

    .line 197
    .line 198
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:Ljava/lang/ref/WeakReference;

    .line 203
    .line 204
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 209
    .line 210
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    if-le v13, v15, :cond_d

    .line 215
    .line 216
    :cond_c
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 217
    .line 218
    invoke-direct {v13, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->H0:Ljava/lang/ref/WeakReference;

    .line 222
    .line 223
    :cond_d
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:Ljava/lang/ref/WeakReference;

    .line 224
    .line 225
    if-eqz v13, :cond_e

    .line 226
    .line 227
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    if-eqz v13, :cond_e

    .line 232
    .line 233
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:Ljava/lang/ref/WeakReference;

    .line 238
    .line 239
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    .line 245
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    if-le v13, v15, :cond_f

    .line 250
    .line 251
    :cond_e
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 252
    .line 253
    invoke-direct {v13, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->J0:Ljava/lang/ref/WeakReference;

    .line 257
    .line 258
    :cond_f
    iget-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 259
    .line 260
    if-eqz v12, :cond_15

    .line 261
    .line 262
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 263
    .line 264
    invoke-virtual {v1, v7, v12}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 265
    .line 266
    .line 267
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 268
    .line 269
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 270
    .line 271
    add-int/2addr v12, v13

    .line 272
    invoke-virtual {v1, v9, v12}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 273
    .line 274
    .line 275
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 276
    .line 277
    if-nez v12, :cond_10

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_10
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    if-lez v12, :cond_11

    .line 285
    .line 286
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 287
    .line 288
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 289
    .line 290
    add-int/2addr v12, v13

    .line 291
    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 292
    .line 293
    .line 294
    :cond_11
    :goto_8
    if-eqz v19, :cond_15

    .line 295
    .line 296
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 297
    .line 298
    if-eqz v12, :cond_15

    .line 299
    .line 300
    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 301
    .line 302
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:Ljava/lang/ref/WeakReference;

    .line 303
    .line 304
    if-eqz v13, :cond_12

    .line 305
    .line 306
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    if-eqz v13, :cond_12

    .line 311
    .line 312
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:Ljava/lang/ref/WeakReference;

    .line 317
    .line 318
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 323
    .line 324
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    if-le v13, v15, :cond_13

    .line 329
    .line 330
    :cond_12
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 331
    .line 332
    invoke-direct {v13, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G0:Ljava/lang/ref/WeakReference;

    .line 336
    .line 337
    :cond_13
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:Ljava/lang/ref/WeakReference;

    .line 338
    .line 339
    if-eqz v13, :cond_14

    .line 340
    .line 341
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v13

    .line 345
    if-eqz v13, :cond_14

    .line 346
    .line 347
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:Ljava/lang/ref/WeakReference;

    .line 352
    .line 353
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 358
    .line 359
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 360
    .line 361
    .line 362
    move-result v15

    .line 363
    if-le v13, v15, :cond_15

    .line 364
    .line 365
    :cond_14
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 366
    .line 367
    invoke-direct {v13, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->I0:Ljava/lang/ref/WeakReference;

    .line 371
    .line 372
    :cond_15
    iget-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 373
    .line 374
    if-eqz v12, :cond_16

    .line 375
    .line 376
    iget-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 377
    .line 378
    if-eqz v12, :cond_16

    .line 379
    .line 380
    move/from16 v12, v18

    .line 381
    .line 382
    iput-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 383
    .line 384
    iput-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 385
    .line 386
    return-void

    .line 387
    :cond_16
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    .line 388
    .line 389
    if-eqz p2, :cond_1a

    .line 390
    .line 391
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 392
    .line 393
    if-eqz v13, :cond_1a

    .line 394
    .line 395
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 396
    .line 397
    if-eqz v15, :cond_1a

    .line 398
    .line 399
    move-object/from16 v24, v10

    .line 400
    .line 401
    iget-object v10, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 402
    .line 403
    move-object/from16 v25, v12

    .line 404
    .line 405
    iget-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 406
    .line 407
    if-eqz v12, :cond_19

    .line 408
    .line 409
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 410
    .line 411
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 412
    .line 413
    if-eqz v12, :cond_19

    .line 414
    .line 415
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 416
    .line 417
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 418
    .line 419
    if-eqz v12, :cond_19

    .line 420
    .line 421
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 422
    .line 423
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 424
    .line 425
    if-eqz v12, :cond_19

    .line 426
    .line 427
    iget v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 428
    .line 429
    invoke-virtual {v1, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 430
    .line 431
    .line 432
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 433
    .line 434
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 435
    .line 436
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 437
    .line 438
    invoke-virtual {v1, v5, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 439
    .line 440
    .line 441
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 442
    .line 443
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 444
    .line 445
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 446
    .line 447
    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 448
    .line 449
    .line 450
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 451
    .line 452
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 453
    .line 454
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 455
    .line 456
    invoke-virtual {v1, v9, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 457
    .line 458
    .line 459
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 460
    .line 461
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 462
    .line 463
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 464
    .line 465
    invoke-virtual {v1, v11, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 469
    .line 470
    if-eqz v2, :cond_18

    .line 471
    .line 472
    if-eqz v23, :cond_17

    .line 473
    .line 474
    const/4 v12, 0x0

    .line 475
    aget-boolean v2, v25, v12

    .line 476
    .line 477
    if-eqz v2, :cond_17

    .line 478
    .line 479
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-nez v2, :cond_17

    .line 484
    .line 485
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 486
    .line 487
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 488
    .line 489
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    const/16 v3, 0x8

    .line 494
    .line 495
    invoke-virtual {v1, v2, v5, v12, v3}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 496
    .line 497
    .line 498
    :cond_17
    if-eqz v19, :cond_18

    .line 499
    .line 500
    aget-boolean v2, v25, v20

    .line 501
    .line 502
    if-eqz v2, :cond_18

    .line 503
    .line 504
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-nez v2, :cond_18

    .line 509
    .line 510
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 511
    .line 512
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 513
    .line 514
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    const/16 v3, 0x8

    .line 519
    .line 520
    const/4 v12, 0x0

    .line 521
    invoke-virtual {v1, v2, v9, v12, v3}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 522
    .line 523
    .line 524
    goto :goto_9

    .line 525
    :cond_18
    const/4 v12, 0x0

    .line 526
    :goto_9
    iput-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 527
    .line 528
    iput-boolean v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 529
    .line 530
    return-void

    .line 531
    :cond_19
    :goto_a
    const/4 v12, 0x0

    .line 532
    goto :goto_b

    .line 533
    :cond_1a
    move-object/from16 v24, v10

    .line 534
    .line 535
    move-object/from16 v25, v12

    .line 536
    .line 537
    goto :goto_a

    .line 538
    :goto_b
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 539
    .line 540
    if-eqz v10, :cond_1f

    .line 541
    .line 542
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u(I)Z

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_1b

    .line 547
    .line 548
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 549
    .line 550
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 551
    .line 552
    invoke-virtual {v10, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 553
    .line 554
    .line 555
    move/from16 v10, v20

    .line 556
    .line 557
    move v12, v10

    .line 558
    goto :goto_c

    .line 559
    :cond_1b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 560
    .line 561
    .line 562
    move-result v10

    .line 563
    move/from16 v12, v20

    .line 564
    .line 565
    :goto_c
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u(I)Z

    .line 566
    .line 567
    .line 568
    move-result v13

    .line 569
    if-eqz v13, :cond_1c

    .line 570
    .line 571
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 572
    .line 573
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 574
    .line 575
    invoke-virtual {v13, v0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 576
    .line 577
    .line 578
    const/4 v12, 0x1

    .line 579
    goto :goto_d

    .line 580
    :cond_1c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 581
    .line 582
    .line 583
    move-result v12

    .line 584
    :goto_d
    if-nez v10, :cond_1d

    .line 585
    .line 586
    if-eqz v23, :cond_1d

    .line 587
    .line 588
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 589
    .line 590
    const/16 v15, 0x8

    .line 591
    .line 592
    if-eq v13, v15, :cond_1d

    .line 593
    .line 594
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 595
    .line 596
    if-nez v13, :cond_1d

    .line 597
    .line 598
    iget-object v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 599
    .line 600
    if-nez v13, :cond_1d

    .line 601
    .line 602
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 603
    .line 604
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 605
    .line 606
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 607
    .line 608
    .line 609
    move-result-object v13

    .line 610
    move-object/from16 v26, v2

    .line 611
    .line 612
    const/4 v2, 0x0

    .line 613
    const/4 v15, 0x1

    .line 614
    invoke-virtual {v1, v13, v5, v2, v15}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 615
    .line 616
    .line 617
    goto :goto_e

    .line 618
    :cond_1d
    move-object/from16 v26, v2

    .line 619
    .line 620
    :goto_e
    if-nez v12, :cond_1e

    .line 621
    .line 622
    if-eqz v19, :cond_1e

    .line 623
    .line 624
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 625
    .line 626
    const/16 v15, 0x8

    .line 627
    .line 628
    if-eq v2, v15, :cond_1e

    .line 629
    .line 630
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 631
    .line 632
    if-nez v2, :cond_1e

    .line 633
    .line 634
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 635
    .line 636
    if-nez v2, :cond_1e

    .line 637
    .line 638
    if-nez v24, :cond_1e

    .line 639
    .line 640
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 641
    .line 642
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 643
    .line 644
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    const/4 v13, 0x0

    .line 649
    const/4 v15, 0x1

    .line 650
    invoke-virtual {v1, v2, v9, v13, v15}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 651
    .line 652
    .line 653
    :cond_1e
    move v2, v12

    .line 654
    move v12, v10

    .line 655
    goto :goto_f

    .line 656
    :cond_1f
    move-object/from16 v26, v2

    .line 657
    .line 658
    const/4 v2, 0x0

    .line 659
    const/4 v12, 0x0

    .line 660
    :goto_f
    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 661
    .line 662
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 663
    .line 664
    if-ge v10, v13, :cond_20

    .line 665
    .line 666
    goto :goto_10

    .line 667
    :cond_20
    move v13, v10

    .line 668
    :goto_10
    iget v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 669
    .line 670
    move/from16 v27, v2

    .line 671
    .line 672
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 673
    .line 674
    if-ge v15, v2, :cond_21

    .line 675
    .line 676
    move/from16 v28, v2

    .line 677
    .line 678
    goto :goto_11

    .line 679
    :cond_21
    move/from16 v28, v15

    .line 680
    .line 681
    :goto_11
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 682
    .line 683
    move-object/from16 v29, v2

    .line 684
    .line 685
    const/16 v18, 0x0

    .line 686
    .line 687
    aget-object v2, v29, v18

    .line 688
    .line 689
    move-object/from16 v30, v4

    .line 690
    .line 691
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 692
    .line 693
    if-eq v2, v4, :cond_22

    .line 694
    .line 695
    const/16 v31, 0x1

    .line 696
    .line 697
    :goto_12
    move-object/from16 v32, v6

    .line 698
    .line 699
    const/16 v20, 0x1

    .line 700
    .line 701
    goto :goto_13

    .line 702
    :cond_22
    const/16 v31, 0x0

    .line 703
    .line 704
    goto :goto_12

    .line 705
    :goto_13
    aget-object v6, v29, v20

    .line 706
    .line 707
    if-eq v6, v4, :cond_23

    .line 708
    .line 709
    const/16 v29, 0x1

    .line 710
    .line 711
    :goto_14
    move-object/from16 v33, v7

    .line 712
    .line 713
    goto :goto_15

    .line 714
    :cond_23
    const/16 v29, 0x0

    .line 715
    .line 716
    goto :goto_14

    .line 717
    :goto_15
    iget v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 718
    .line 719
    iput v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 720
    .line 721
    move-object/from16 v34, v8

    .line 722
    .line 723
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 724
    .line 725
    iput v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 726
    .line 727
    move/from16 v35, v8

    .line 728
    .line 729
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 730
    .line 731
    move/from16 v36, v8

    .line 732
    .line 733
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 734
    .line 735
    const/16 v37, 0x0

    .line 736
    .line 737
    cmpl-float v37, v35, v37

    .line 738
    .line 739
    move/from16 v38, v8

    .line 740
    .line 741
    const/high16 v39, 0x3f800000    # 1.0f

    .line 742
    .line 743
    if-lez v37, :cond_37

    .line 744
    .line 745
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 746
    .line 747
    move-object/from16 v40, v9

    .line 748
    .line 749
    const/16 v9, 0x8

    .line 750
    .line 751
    if-eq v8, v9, :cond_36

    .line 752
    .line 753
    if-ne v2, v4, :cond_24

    .line 754
    .line 755
    if-nez v36, :cond_24

    .line 756
    .line 757
    const/4 v8, 0x3

    .line 758
    goto :goto_16

    .line 759
    :cond_24
    move/from16 v8, v36

    .line 760
    .line 761
    :goto_16
    if-ne v6, v4, :cond_25

    .line 762
    .line 763
    if-nez v38, :cond_25

    .line 764
    .line 765
    const/4 v9, 0x3

    .line 766
    goto :goto_17

    .line 767
    :cond_25
    move/from16 v9, v38

    .line 768
    .line 769
    :goto_17
    if-ne v2, v4, :cond_30

    .line 770
    .line 771
    if-ne v6, v4, :cond_30

    .line 772
    .line 773
    move-object/from16 v41, v11

    .line 774
    .line 775
    const/4 v11, 0x3

    .line 776
    if-ne v8, v11, :cond_31

    .line 777
    .line 778
    if-ne v9, v11, :cond_31

    .line 779
    .line 780
    const/4 v11, -0x1

    .line 781
    if-ne v7, v11, :cond_27

    .line 782
    .line 783
    if-eqz v31, :cond_26

    .line 784
    .line 785
    if-nez v29, :cond_26

    .line 786
    .line 787
    const/4 v2, 0x0

    .line 788
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 789
    .line 790
    goto :goto_18

    .line 791
    :cond_26
    if-nez v31, :cond_27

    .line 792
    .line 793
    if-eqz v29, :cond_27

    .line 794
    .line 795
    const/4 v15, 0x1

    .line 796
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 797
    .line 798
    if-ne v7, v11, :cond_27

    .line 799
    .line 800
    div-float v2, v39, v35

    .line 801
    .line 802
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 803
    .line 804
    :cond_27
    :goto_18
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 805
    .line 806
    if-nez v2, :cond_29

    .line 807
    .line 808
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    if-eqz v2, :cond_28

    .line 813
    .line 814
    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-nez v2, :cond_29

    .line 819
    .line 820
    :cond_28
    const/4 v15, 0x1

    .line 821
    goto :goto_19

    .line 822
    :cond_29
    const/4 v15, 0x1

    .line 823
    goto :goto_1a

    .line 824
    :goto_19
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 825
    .line 826
    goto :goto_1b

    .line 827
    :goto_1a
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 828
    .line 829
    if-ne v2, v15, :cond_2b

    .line 830
    .line 831
    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 832
    .line 833
    .line 834
    move-result v2

    .line 835
    if-eqz v2, :cond_2a

    .line 836
    .line 837
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    if-nez v2, :cond_2b

    .line 842
    .line 843
    :cond_2a
    const/4 v2, 0x0

    .line 844
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 845
    .line 846
    :cond_2b
    :goto_1b
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 847
    .line 848
    const/4 v11, -0x1

    .line 849
    if-ne v2, v11, :cond_2e

    .line 850
    .line 851
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_2c

    .line 856
    .line 857
    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    if-eqz v2, :cond_2c

    .line 862
    .line 863
    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    if-eqz v2, :cond_2c

    .line 868
    .line 869
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    if-nez v2, :cond_2e

    .line 874
    .line 875
    :cond_2c
    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    if-eqz v2, :cond_2d

    .line 880
    .line 881
    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    if-eqz v2, :cond_2d

    .line 886
    .line 887
    const/4 v2, 0x0

    .line 888
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 889
    .line 890
    goto :goto_1c

    .line 891
    :cond_2d
    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    if-eqz v2, :cond_2e

    .line 896
    .line 897
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    if-eqz v2, :cond_2e

    .line 902
    .line 903
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 904
    .line 905
    div-float v2, v39, v2

    .line 906
    .line 907
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 908
    .line 909
    const/4 v15, 0x1

    .line 910
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 911
    .line 912
    :cond_2e
    :goto_1c
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 913
    .line 914
    const/4 v11, -0x1

    .line 915
    if-ne v2, v11, :cond_35

    .line 916
    .line 917
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 918
    .line 919
    if-lez v2, :cond_2f

    .line 920
    .line 921
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 922
    .line 923
    if-nez v6, :cond_2f

    .line 924
    .line 925
    const/4 v6, 0x0

    .line 926
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 927
    .line 928
    goto :goto_20

    .line 929
    :cond_2f
    if-nez v2, :cond_35

    .line 930
    .line 931
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 932
    .line 933
    if-lez v2, :cond_35

    .line 934
    .line 935
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 936
    .line 937
    div-float v2, v39, v2

    .line 938
    .line 939
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 940
    .line 941
    const/4 v15, 0x1

    .line 942
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 943
    .line 944
    goto :goto_20

    .line 945
    :cond_30
    move-object/from16 v41, v11

    .line 946
    .line 947
    :cond_31
    if-ne v2, v4, :cond_33

    .line 948
    .line 949
    const/4 v11, 0x3

    .line 950
    if-ne v8, v11, :cond_33

    .line 951
    .line 952
    const/4 v11, 0x0

    .line 953
    iput v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 954
    .line 955
    int-to-float v2, v15

    .line 956
    mul-float v2, v2, v35

    .line 957
    .line 958
    float-to-int v2, v2

    .line 959
    move v13, v2

    .line 960
    move/from16 v2, v23

    .line 961
    .line 962
    if-eq v6, v4, :cond_32

    .line 963
    .line 964
    const/4 v8, 0x4

    .line 965
    const/16 v29, 0x0

    .line 966
    .line 967
    :goto_1d
    move/from16 v23, v9

    .line 968
    .line 969
    goto :goto_23

    .line 970
    :cond_32
    :goto_1e
    const/16 v29, 0x1

    .line 971
    .line 972
    goto :goto_1d

    .line 973
    :cond_33
    if-ne v6, v4, :cond_35

    .line 974
    .line 975
    const/4 v11, 0x3

    .line 976
    if-ne v9, v11, :cond_35

    .line 977
    .line 978
    const/4 v15, 0x1

    .line 979
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 980
    .line 981
    const/4 v11, -0x1

    .line 982
    if-ne v7, v11, :cond_34

    .line 983
    .line 984
    div-float v6, v39, v35

    .line 985
    .line 986
    iput v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 987
    .line 988
    :cond_34
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 989
    .line 990
    int-to-float v7, v10

    .line 991
    mul-float/2addr v6, v7

    .line 992
    float-to-int v6, v6

    .line 993
    move/from16 v28, v6

    .line 994
    .line 995
    if-eq v2, v4, :cond_35

    .line 996
    .line 997
    move/from16 v2, v23

    .line 998
    .line 999
    const/16 v23, 0x4

    .line 1000
    .line 1001
    :goto_1f
    const/16 v29, 0x0

    .line 1002
    .line 1003
    goto :goto_23

    .line 1004
    :cond_35
    :goto_20
    move/from16 v2, v23

    .line 1005
    .line 1006
    goto :goto_1e

    .line 1007
    :cond_36
    :goto_21
    move-object/from16 v41, v11

    .line 1008
    .line 1009
    goto :goto_22

    .line 1010
    :cond_37
    move-object/from16 v40, v9

    .line 1011
    .line 1012
    goto :goto_21

    .line 1013
    :goto_22
    move/from16 v2, v23

    .line 1014
    .line 1015
    move/from16 v8, v36

    .line 1016
    .line 1017
    move/from16 v23, v38

    .line 1018
    .line 1019
    goto :goto_1f

    .line 1020
    :goto_23
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:[I

    .line 1021
    .line 1022
    const/16 v18, 0x0

    .line 1023
    .line 1024
    aput v8, v6, v18

    .line 1025
    .line 1026
    const/16 v20, 0x1

    .line 1027
    .line 1028
    aput v23, v6, v20

    .line 1029
    .line 1030
    if-eqz v29, :cond_39

    .line 1031
    .line 1032
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 1033
    .line 1034
    const/4 v11, -0x1

    .line 1035
    if-eqz v6, :cond_38

    .line 1036
    .line 1037
    if-ne v6, v11, :cond_3a

    .line 1038
    .line 1039
    :cond_38
    const/16 v17, 0x1

    .line 1040
    .line 1041
    :goto_24
    const/4 v15, 0x2

    .line 1042
    goto :goto_25

    .line 1043
    :cond_39
    const/4 v11, -0x1

    .line 1044
    :cond_3a
    const/16 v17, 0x0

    .line 1045
    .line 1046
    goto :goto_24

    .line 1047
    :goto_25
    if-eqz v29, :cond_3c

    .line 1048
    .line 1049
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 1050
    .line 1051
    const/4 v7, 0x1

    .line 1052
    if-eq v6, v7, :cond_3b

    .line 1053
    .line 1054
    if-ne v6, v11, :cond_3c

    .line 1055
    .line 1056
    :cond_3b
    const/16 v30, 0x1

    .line 1057
    .line 1058
    goto :goto_26

    .line 1059
    :cond_3c
    const/16 v30, 0x0

    .line 1060
    .line 1061
    :goto_26
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1062
    .line 1063
    const/16 v18, 0x0

    .line 1064
    .line 1065
    aget-object v6, v6, v18

    .line 1066
    .line 1067
    if-ne v6, v14, :cond_3d

    .line 1068
    .line 1069
    instance-of v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1070
    .line 1071
    if-eqz v6, :cond_3d

    .line 1072
    .line 1073
    const/4 v9, 0x1

    .line 1074
    goto :goto_27

    .line 1075
    :cond_3d
    const/4 v9, 0x0

    .line 1076
    :goto_27
    if-eqz v9, :cond_3e

    .line 1077
    .line 1078
    const/4 v13, 0x0

    .line 1079
    :cond_3e
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1080
    .line 1081
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v7

    .line 1085
    const/16 v20, 0x1

    .line 1086
    .line 1087
    xor-int/lit8 v7, v7, 0x1

    .line 1088
    .line 1089
    move-object/from16 v10, v21

    .line 1090
    .line 1091
    const/16 v18, 0x0

    .line 1092
    .line 1093
    aget-boolean v21, v10, v18

    .line 1094
    .line 1095
    aget-boolean v31, v10, v20

    .line 1096
    .line 1097
    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:I

    .line 1098
    .line 1099
    const/16 v32, 0x0

    .line 1100
    .line 1101
    if-eq v10, v15, :cond_41

    .line 1102
    .line 1103
    iget-boolean v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 1104
    .line 1105
    if-nez v10, :cond_41

    .line 1106
    .line 1107
    if-eqz p2, :cond_3f

    .line 1108
    .line 1109
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1110
    .line 1111
    if-eqz v10, :cond_3f

    .line 1112
    .line 1113
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1114
    .line 1115
    iget-boolean v15, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1116
    .line 1117
    if-eqz v15, :cond_3f

    .line 1118
    .line 1119
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1120
    .line 1121
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1122
    .line 1123
    if-nez v10, :cond_40

    .line 1124
    .line 1125
    :cond_3f
    const/16 v15, 0x8

    .line 1126
    .line 1127
    goto :goto_28

    .line 1128
    :cond_40
    if-eqz p2, :cond_41

    .line 1129
    .line 1130
    iget v9, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1131
    .line 1132
    invoke-virtual {v1, v3, v9}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1133
    .line 1134
    .line 1135
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 1136
    .line 1137
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1138
    .line 1139
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1140
    .line 1141
    invoke-virtual {v1, v5, v9}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1142
    .line 1143
    .line 1144
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1145
    .line 1146
    if-eqz v9, :cond_41

    .line 1147
    .line 1148
    if-eqz v2, :cond_41

    .line 1149
    .line 1150
    const/4 v13, 0x0

    .line 1151
    aget-boolean v9, v25, v13

    .line 1152
    .line 1153
    if-eqz v9, :cond_41

    .line 1154
    .line 1155
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 1156
    .line 1157
    .line 1158
    move-result v9

    .line 1159
    if-nez v9, :cond_41

    .line 1160
    .line 1161
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1162
    .line 1163
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1164
    .line 1165
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v9

    .line 1169
    const/16 v15, 0x8

    .line 1170
    .line 1171
    invoke-virtual {v1, v9, v5, v13, v15}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1172
    .line 1173
    .line 1174
    :cond_41
    move-object/from16 v48, v3

    .line 1175
    .line 1176
    move-object/from16 v56, v4

    .line 1177
    .line 1178
    move-object/from16 v49, v5

    .line 1179
    .line 1180
    move-object/from16 v46, v6

    .line 1181
    .line 1182
    move/from16 v22, v8

    .line 1183
    .line 1184
    move/from16 v20, v12

    .line 1185
    .line 1186
    move-object/from16 v53, v14

    .line 1187
    .line 1188
    move-object/from16 v55, v24

    .line 1189
    .line 1190
    move/from16 v18, v27

    .line 1191
    .line 1192
    move-object/from16 v50, v33

    .line 1193
    .line 1194
    move-object/from16 v54, v34

    .line 1195
    .line 1196
    move-object/from16 v51, v40

    .line 1197
    .line 1198
    move-object/from16 v52, v41

    .line 1199
    .line 1200
    move v3, v2

    .line 1201
    move/from16 v27, v7

    .line 1202
    .line 1203
    move-object/from16 v33, v25

    .line 1204
    .line 1205
    goto/16 :goto_2c

    .line 1206
    .line 1207
    :goto_28
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1208
    .line 1209
    if-eqz v10, :cond_42

    .line 1210
    .line 1211
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1212
    .line 1213
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v10

    .line 1217
    goto :goto_29

    .line 1218
    :cond_42
    move-object/from16 v10, v32

    .line 1219
    .line 1220
    :goto_29
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1221
    .line 1222
    if-eqz v11, :cond_43

    .line 1223
    .line 1224
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1225
    .line 1226
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v11

    .line 1230
    :goto_2a
    move-object/from16 v22, v5

    .line 1231
    .line 1232
    const/16 v18, 0x0

    .line 1233
    .line 1234
    goto :goto_2b

    .line 1235
    :cond_43
    move-object/from16 v11, v32

    .line 1236
    .line 1237
    goto :goto_2a

    .line 1238
    :goto_2b
    aget-boolean v5, v25, v18

    .line 1239
    .line 1240
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1241
    .line 1242
    move-object/from16 v35, v22

    .line 1243
    .line 1244
    move/from16 v22, v8

    .line 1245
    .line 1246
    aget-object v8, v15, v18

    .line 1247
    .line 1248
    move/from16 v36, v19

    .line 1249
    .line 1250
    move/from16 v19, v12

    .line 1251
    .line 1252
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 1253
    .line 1254
    move-object/from16 v37, v14

    .line 1255
    .line 1256
    iget v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 1257
    .line 1258
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 1259
    .line 1260
    aget v1, v1, v18

    .line 1261
    .line 1262
    move/from16 v38, v1

    .line 1263
    .line 1264
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 1265
    .line 1266
    const/16 v20, 0x1

    .line 1267
    .line 1268
    aget-object v15, v15, v20

    .line 1269
    .line 1270
    if-ne v15, v4, :cond_44

    .line 1271
    .line 1272
    move/from16 v18, v20

    .line 1273
    .line 1274
    :cond_44
    iget v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 1275
    .line 1276
    move/from16 v42, v1

    .line 1277
    .line 1278
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 1279
    .line 1280
    move/from16 v43, v1

    .line 1281
    .line 1282
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:F

    .line 1283
    .line 1284
    move-object/from16 v44, v3

    .line 1285
    .line 1286
    move v3, v2

    .line 1287
    const/4 v2, 0x1

    .line 1288
    move/from16 v45, v20

    .line 1289
    .line 1290
    move/from16 v20, v27

    .line 1291
    .line 1292
    move/from16 v27, v7

    .line 1293
    .line 1294
    move-object v7, v10

    .line 1295
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1296
    .line 1297
    move-object/from16 v46, v6

    .line 1298
    .line 1299
    move-object v6, v11

    .line 1300
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1301
    .line 1302
    move/from16 v26, v1

    .line 1303
    .line 1304
    move-object/from16 v56, v4

    .line 1305
    .line 1306
    move-object/from16 v55, v24

    .line 1307
    .line 1308
    move-object/from16 v50, v33

    .line 1309
    .line 1310
    move-object/from16 v54, v34

    .line 1311
    .line 1312
    move-object/from16 v49, v35

    .line 1313
    .line 1314
    move/from16 v4, v36

    .line 1315
    .line 1316
    move-object/from16 v53, v37

    .line 1317
    .line 1318
    move-object/from16 v51, v40

    .line 1319
    .line 1320
    move-object/from16 v52, v41

    .line 1321
    .line 1322
    move/from16 v16, v42

    .line 1323
    .line 1324
    move-object/from16 v48, v44

    .line 1325
    .line 1326
    move-object/from16 v1, p1

    .line 1327
    .line 1328
    move/from16 v24, v15

    .line 1329
    .line 1330
    move-object/from16 v33, v25

    .line 1331
    .line 1332
    move/from16 v15, v38

    .line 1333
    .line 1334
    move/from16 v25, v43

    .line 1335
    .line 1336
    invoke-virtual/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 1337
    .line 1338
    .line 1339
    move/from16 v18, v20

    .line 1340
    .line 1341
    move/from16 v20, v19

    .line 1342
    .line 1343
    move/from16 v19, v4

    .line 1344
    .line 1345
    :goto_2c
    if-eqz p2, :cond_47

    .line 1346
    .line 1347
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1348
    .line 1349
    if-eqz v2, :cond_47

    .line 1350
    .line 1351
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1352
    .line 1353
    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1354
    .line 1355
    if-eqz v5, :cond_47

    .line 1356
    .line 1357
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1358
    .line 1359
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1360
    .line 1361
    if-eqz v2, :cond_47

    .line 1362
    .line 1363
    iget v2, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1364
    .line 1365
    move-object/from16 v4, v50

    .line 1366
    .line 1367
    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1371
    .line 1372
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1373
    .line 1374
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1375
    .line 1376
    move-object/from16 v5, v51

    .line 1377
    .line 1378
    invoke-virtual {v1, v5, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1379
    .line 1380
    .line 1381
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 1382
    .line 1383
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 1384
    .line 1385
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 1386
    .line 1387
    move-object/from16 v6, v52

    .line 1388
    .line 1389
    invoke-virtual {v1, v6, v2}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 1390
    .line 1391
    .line 1392
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1393
    .line 1394
    if-eqz v2, :cond_46

    .line 1395
    .line 1396
    if-nez v18, :cond_46

    .line 1397
    .line 1398
    if-eqz v19, :cond_46

    .line 1399
    .line 1400
    const/4 v15, 0x1

    .line 1401
    aget-boolean v7, v33, v15

    .line 1402
    .line 1403
    if-eqz v7, :cond_45

    .line 1404
    .line 1405
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1406
    .line 1407
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v2

    .line 1411
    const/4 v7, 0x0

    .line 1412
    const/16 v9, 0x8

    .line 1413
    .line 1414
    invoke-virtual {v1, v2, v5, v7, v9}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_2d

    .line 1418
    :cond_45
    const/4 v7, 0x0

    .line 1419
    const/16 v9, 0x8

    .line 1420
    .line 1421
    goto :goto_2d

    .line 1422
    :cond_46
    const/4 v7, 0x0

    .line 1423
    const/16 v9, 0x8

    .line 1424
    .line 1425
    const/4 v15, 0x1

    .line 1426
    :goto_2d
    move v2, v7

    .line 1427
    goto :goto_2e

    .line 1428
    :cond_47
    move-object/from16 v4, v50

    .line 1429
    .line 1430
    move-object/from16 v5, v51

    .line 1431
    .line 1432
    move-object/from16 v6, v52

    .line 1433
    .line 1434
    const/4 v7, 0x0

    .line 1435
    const/16 v9, 0x8

    .line 1436
    .line 1437
    const/4 v15, 0x1

    .line 1438
    move v2, v15

    .line 1439
    :goto_2e
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:I

    .line 1440
    .line 1441
    const/4 v10, 0x2

    .line 1442
    if-ne v8, v10, :cond_48

    .line 1443
    .line 1444
    move v13, v7

    .line 1445
    goto :goto_2f

    .line 1446
    :cond_48
    move v13, v2

    .line 1447
    :goto_2f
    if-eqz v13, :cond_53

    .line 1448
    .line 1449
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 1450
    .line 1451
    if-nez v2, :cond_53

    .line 1452
    .line 1453
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1454
    .line 1455
    aget-object v2, v2, v15

    .line 1456
    .line 1457
    move-object/from16 v8, v53

    .line 1458
    .line 1459
    if-ne v2, v8, :cond_49

    .line 1460
    .line 1461
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1462
    .line 1463
    if-eqz v2, :cond_49

    .line 1464
    .line 1465
    move v2, v15

    .line 1466
    goto :goto_30

    .line 1467
    :cond_49
    move v2, v7

    .line 1468
    :goto_30
    if-eqz v2, :cond_4a

    .line 1469
    .line 1470
    move v13, v7

    .line 1471
    goto :goto_31

    .line 1472
    :cond_4a
    move/from16 v13, v28

    .line 1473
    .line 1474
    :goto_31
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1475
    .line 1476
    if-eqz v8, :cond_4b

    .line 1477
    .line 1478
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1479
    .line 1480
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v8

    .line 1484
    goto :goto_32

    .line 1485
    :cond_4b
    move-object/from16 v8, v32

    .line 1486
    .line 1487
    :goto_32
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1488
    .line 1489
    if-eqz v10, :cond_4c

    .line 1490
    .line 1491
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1492
    .line 1493
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v32

    .line 1497
    :cond_4c
    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 1498
    .line 1499
    if-gtz v10, :cond_4d

    .line 1500
    .line 1501
    iget v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 1502
    .line 1503
    if-ne v11, v9, :cond_51

    .line 1504
    .line 1505
    :cond_4d
    move-object/from16 v11, v55

    .line 1506
    .line 1507
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1508
    .line 1509
    if-eqz v12, :cond_4f

    .line 1510
    .line 1511
    invoke-virtual {v1, v6, v4, v10, v9}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1512
    .line 1513
    .line 1514
    iget-object v10, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1515
    .line 1516
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v10

    .line 1520
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 1521
    .line 1522
    .line 1523
    move-result v11

    .line 1524
    invoke-virtual {v1, v6, v10, v11, v9}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1525
    .line 1526
    .line 1527
    if-eqz v19, :cond_4e

    .line 1528
    .line 1529
    move-object/from16 v6, v54

    .line 1530
    .line 1531
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v6

    .line 1535
    const/4 v9, 0x5

    .line 1536
    invoke-virtual {v1, v8, v6, v7, v9}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1537
    .line 1538
    .line 1539
    :cond_4e
    move/from16 v27, v7

    .line 1540
    .line 1541
    goto :goto_33

    .line 1542
    :cond_4f
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 1543
    .line 1544
    if-ne v12, v9, :cond_50

    .line 1545
    .line 1546
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 1547
    .line 1548
    .line 1549
    move-result v10

    .line 1550
    invoke-virtual {v1, v6, v4, v10, v9}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1551
    .line 1552
    .line 1553
    goto :goto_33

    .line 1554
    :cond_50
    invoke-virtual {v1, v6, v4, v10, v9}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1555
    .line 1556
    .line 1557
    :cond_51
    :goto_33
    aget-boolean v6, v33, v15

    .line 1558
    .line 1559
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1560
    .line 1561
    move v12, v7

    .line 1562
    move-object v7, v8

    .line 1563
    aget-object v8, v9, v15

    .line 1564
    .line 1565
    move/from16 v47, v12

    .line 1566
    .line 1567
    iget v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 1568
    .line 1569
    iget v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1570
    .line 1571
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 1572
    .line 1573
    aget v10, v10, v15

    .line 1574
    .line 1575
    iget v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 1576
    .line 1577
    aget-object v9, v9, v47

    .line 1578
    .line 1579
    move-object/from16 v15, v56

    .line 1580
    .line 1581
    if-ne v9, v15, :cond_52

    .line 1582
    .line 1583
    const/4 v15, 0x1

    .line 1584
    goto :goto_34

    .line 1585
    :cond_52
    move/from16 v15, v47

    .line 1586
    .line 1587
    :goto_34
    iget v9, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 1588
    .line 1589
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 1590
    .line 1591
    move/from16 v25, v1

    .line 1592
    .line 1593
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:F

    .line 1594
    .line 1595
    move/from16 v24, v9

    .line 1596
    .line 1597
    move v9, v2

    .line 1598
    const/4 v2, 0x0

    .line 1599
    move/from16 v36, v19

    .line 1600
    .line 1601
    move/from16 v19, v18

    .line 1602
    .line 1603
    move/from16 v18, v15

    .line 1604
    .line 1605
    move v15, v10

    .line 1606
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1607
    .line 1608
    move/from16 v16, v11

    .line 1609
    .line 1610
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1611
    .line 1612
    move/from16 v17, v23

    .line 1613
    .line 1614
    move/from16 v23, v22

    .line 1615
    .line 1616
    move/from16 v22, v17

    .line 1617
    .line 1618
    move/from16 v26, v1

    .line 1619
    .line 1620
    move-object/from16 v57, v4

    .line 1621
    .line 1622
    move-object/from16 v58, v5

    .line 1623
    .line 1624
    move v5, v6

    .line 1625
    move/from16 v17, v30

    .line 1626
    .line 1627
    move/from16 v21, v31

    .line 1628
    .line 1629
    move-object/from16 v6, v32

    .line 1630
    .line 1631
    move-object/from16 v1, p1

    .line 1632
    .line 1633
    move v4, v3

    .line 1634
    move/from16 v3, v36

    .line 1635
    .line 1636
    invoke-virtual/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 1637
    .line 1638
    .line 1639
    goto :goto_35

    .line 1640
    :cond_53
    move-object/from16 v57, v4

    .line 1641
    .line 1642
    move-object/from16 v58, v5

    .line 1643
    .line 1644
    :goto_35
    if-eqz v29, :cond_55

    .line 1645
    .line 1646
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 1647
    .line 1648
    const/high16 v3, -0x40800000    # -1.0f

    .line 1649
    .line 1650
    const/4 v15, 0x1

    .line 1651
    if-ne v2, v15, :cond_54

    .line 1652
    .line 1653
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 1654
    .line 1655
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->l()Landroidx/constraintlayout/core/ArrayRow;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v4

    .line 1659
    iget-object v5, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1660
    .line 1661
    move-object/from16 v6, v58

    .line 1662
    .line 1663
    invoke-interface {v5, v6, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1664
    .line 1665
    .line 1666
    iget-object v3, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1667
    .line 1668
    move-object/from16 v5, v57

    .line 1669
    .line 1670
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1671
    .line 1672
    invoke-interface {v3, v5, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1673
    .line 1674
    .line 1675
    iget-object v3, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1676
    .line 1677
    move-object/from16 v8, v49

    .line 1678
    .line 1679
    invoke-interface {v3, v8, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1680
    .line 1681
    .line 1682
    iget-object v3, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1683
    .line 1684
    neg-float v2, v2

    .line 1685
    move-object/from16 v9, v48

    .line 1686
    .line 1687
    invoke-interface {v3, v9, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1688
    .line 1689
    .line 1690
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1691
    .line 1692
    .line 1693
    goto :goto_36

    .line 1694
    :cond_54
    move-object/from16 v9, v48

    .line 1695
    .line 1696
    move-object/from16 v8, v49

    .line 1697
    .line 1698
    move-object/from16 v5, v57

    .line 1699
    .line 1700
    move-object/from16 v6, v58

    .line 1701
    .line 1702
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1703
    .line 1704
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 1705
    .line 1706
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->l()Landroidx/constraintlayout/core/ArrayRow;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v4

    .line 1710
    iget-object v10, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1711
    .line 1712
    invoke-interface {v10, v8, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1713
    .line 1714
    .line 1715
    iget-object v3, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1716
    .line 1717
    invoke-interface {v3, v9, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1718
    .line 1719
    .line 1720
    iget-object v3, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1721
    .line 1722
    invoke-interface {v3, v6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1723
    .line 1724
    .line 1725
    iget-object v3, v4, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1726
    .line 1727
    neg-float v2, v2

    .line 1728
    invoke-interface {v3, v5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1732
    .line 1733
    .line 1734
    :cond_55
    :goto_36
    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v2

    .line 1738
    if-eqz v2, :cond_56

    .line 1739
    .line 1740
    move-object/from16 v2, v46

    .line 1741
    .line 1742
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1743
    .line 1744
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1745
    .line 1746
    iget v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 1747
    .line 1748
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1749
    .line 1750
    add-float/2addr v4, v5

    .line 1751
    float-to-double v4, v4

    .line 1752
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 1753
    .line 1754
    .line 1755
    move-result-wide v4

    .line 1756
    double-to-float v4, v4

    .line 1757
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 1758
    .line 1759
    .line 1760
    move-result v2

    .line 1761
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1762
    .line 1763
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v6

    .line 1767
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v6

    .line 1771
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1772
    .line 1773
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v8

    .line 1777
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v8

    .line 1781
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1782
    .line 1783
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v10

    .line 1787
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v10

    .line 1791
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1792
    .line 1793
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v12

    .line 1797
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v12

    .line 1801
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v5

    .line 1805
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v5

    .line 1809
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v7

    .line 1813
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v7

    .line 1817
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v9

    .line 1821
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v9

    .line 1825
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v3

    .line 1829
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v3

    .line 1833
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->l()Landroidx/constraintlayout/core/ArrayRow;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v11

    .line 1837
    float-to-double v13, v4

    .line 1838
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 1839
    .line 1840
    .line 1841
    move-result-wide v15

    .line 1842
    move-wide/from16 v17, v13

    .line 1843
    .line 1844
    int-to-double v13, v2

    .line 1845
    move-wide/from16 v19, v13

    .line 1846
    .line 1847
    mul-double v13, v15, v19

    .line 1848
    .line 1849
    double-to-float v2, v13

    .line 1850
    iget-object v4, v11, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1851
    .line 1852
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1853
    .line 1854
    invoke-interface {v4, v7, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1855
    .line 1856
    .line 1857
    iget-object v4, v11, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1858
    .line 1859
    invoke-interface {v4, v3, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1860
    .line 1861
    .line 1862
    iget-object v3, v11, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1863
    .line 1864
    const/high16 v4, -0x41000000    # -0.5f

    .line 1865
    .line 1866
    invoke-interface {v3, v8, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1867
    .line 1868
    .line 1869
    iget-object v3, v11, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1870
    .line 1871
    invoke-interface {v3, v12, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1872
    .line 1873
    .line 1874
    neg-float v2, v2

    .line 1875
    iput v2, v11, Landroidx/constraintlayout/core/ArrayRow;->b:F

    .line 1876
    .line 1877
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->l()Landroidx/constraintlayout/core/ArrayRow;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v2

    .line 1884
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    .line 1885
    .line 1886
    .line 1887
    move-result-wide v7

    .line 1888
    mul-double v7, v7, v19

    .line 1889
    .line 1890
    double-to-float v3, v7

    .line 1891
    iget-object v7, v2, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1892
    .line 1893
    invoke-interface {v7, v5, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1894
    .line 1895
    .line 1896
    iget-object v5, v2, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1897
    .line 1898
    invoke-interface {v5, v9, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1899
    .line 1900
    .line 1901
    iget-object v5, v2, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1902
    .line 1903
    invoke-interface {v5, v6, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1904
    .line 1905
    .line 1906
    iget-object v5, v2, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1907
    .line 1908
    invoke-interface {v5, v10, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1909
    .line 1910
    .line 1911
    neg-float v3, v3

    .line 1912
    iput v3, v2, Landroidx/constraintlayout/core/ArrayRow;->b:F

    .line 1913
    .line 1914
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1915
    .line 1916
    .line 1917
    :cond_56
    const/4 v2, 0x0

    .line 1918
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 1919
    .line 1920
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 1921
    .line 1922
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final e(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p14

    move/from16 v2, p15

    move/from16 v4, p24

    move/from16 v5, p25

    move/from16 v6, p26

    .line 1
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    .line 2
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    .line 3
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 5
    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v15

    .line 7
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    move-result v16

    .line 8
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    move-result v17

    .line 9
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    move-result v11

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v11, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v19, v11

    move/from16 v11, v18

    if-eqz p17, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    move/from16 v3, p22

    .line 10
    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v10, 0x1

    move-object/from16 v20, v15

    if-eqz v13, :cond_3

    if-eq v13, v10, :cond_3

    const/4 v10, 0x2

    if-eq v13, v10, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    const/4 v13, 0x1

    .line 11
    :goto_2
    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:I

    const/4 v15, -0x1

    if-eq v10, v15, :cond_5

    if-eqz p2, :cond_5

    .line 12
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:I

    move/from16 p13, v10

    const/4 v13, 0x0

    .line 13
    :cond_5
    iget v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    if-eq v10, v15, :cond_6

    if-nez p2, :cond_6

    .line 14
    iput v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:I

    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    move/from16 v10, p13

    .line 15
    :goto_3
    iget v15, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    move/from16 p13, v10

    const/16 v10, 0x8

    if-ne v15, v10, :cond_7

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    move/from16 v15, p13

    :goto_4
    if-eqz p27, :cond_a

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v19, :cond_9

    move/from16 v10, p12

    .line 16
    invoke-virtual {v1, v7, v10}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    :cond_8
    move/from16 v24, v13

    const/16 v13, 0x8

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    .line 17
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v10

    move/from16 v24, v13

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v10, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_5

    :cond_a
    move/from16 v24, v13

    move v13, v10

    :goto_5
    if-nez v24, :cond_e

    if-eqz p9, :cond_c

    const/4 v6, 0x3

    const/4 v10, 0x0

    .line 18
    invoke-virtual {v1, v8, v7, v10, v6}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-lez v14, :cond_b

    .line 19
    invoke-virtual {v1, v8, v7, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_b
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_d

    .line 20
    invoke-virtual {v1, v8, v7, v2, v13}, Landroidx/constraintlayout/core/LinearSystem;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6

    .line 21
    :cond_c
    invoke-virtual {v1, v8, v7, v15, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_d
    :goto_6
    move/from16 v10, p5

    move v13, v4

    goto/16 :goto_a

    :cond_e
    const/4 v10, 0x2

    if-eq v11, v10, :cond_11

    if-nez p17, :cond_11

    const/4 v2, 0x1

    if-eq v3, v2, :cond_f

    if-nez v3, :cond_11

    .line 22
    :cond_f
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v5, :cond_10

    .line 23
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_10
    const/16 v13, 0x8

    .line 24
    invoke-virtual {v1, v8, v7, v2, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move/from16 v10, p5

    move v13, v4

    const/16 v24, 0x0

    goto/16 :goto_a

    :cond_11
    const/4 v2, -0x2

    if-ne v4, v2, :cond_12

    move v4, v15

    :cond_12
    if-ne v5, v2, :cond_13

    move v5, v15

    :cond_13
    if-lez v15, :cond_14

    const/4 v2, 0x1

    if-eq v3, v2, :cond_14

    const/4 v15, 0x0

    :cond_14
    const/16 v13, 0x8

    if-lez v4, :cond_15

    .line 25
    invoke-virtual {v1, v8, v7, v4, v13}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 26
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_15
    const/4 v2, 0x1

    if-lez v5, :cond_17

    if-eqz p3, :cond_16

    if-ne v3, v2, :cond_16

    goto :goto_7

    .line 27
    :cond_16
    invoke-virtual {v1, v8, v7, v5, v13}, Landroidx/constraintlayout/core/LinearSystem;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 28
    :goto_7
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_17
    if-ne v3, v2, :cond_1a

    if-eqz p3, :cond_18

    .line 29
    invoke-virtual {v1, v8, v7, v15, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6

    :cond_18
    if-eqz p19, :cond_19

    const/4 v2, 0x5

    .line 30
    invoke-virtual {v1, v8, v7, v15, v2}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 31
    invoke-virtual {v1, v8, v7, v15, v13}, Landroidx/constraintlayout/core/LinearSystem;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6

    :cond_19
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v1, v8, v7, v15, v2}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 33
    invoke-virtual {v1, v8, v7, v15, v13}, Landroidx/constraintlayout/core/LinearSystem;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6

    :cond_1a
    const/4 v10, 0x2

    if-ne v3, v10, :cond_1e

    .line 34
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 35
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v2, v13, :cond_1c

    if-ne v2, v10, :cond_1b

    goto :goto_8

    .line 36
    :cond_1b
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 37
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    goto :goto_9

    .line 38
    :cond_1c
    :goto_8
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 39
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v13, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    .line 40
    :goto_9
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->l()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v13

    .line 41
    iget-object v15, v13, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move/from16 p9, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {v15, v8, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 42
    iget-object v4, v13, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-interface {v4, v7, v15}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 43
    iget-object v4, v13, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v4, v10, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 44
    iget-object v4, v13, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    neg-float v6, v6

    invoke-interface {v4, v2, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 45
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/LinearSystem;->c(Landroidx/constraintlayout/core/ArrayRow;)V

    if-eqz p3, :cond_1d

    const/16 v24, 0x0

    :cond_1d
    move/from16 v10, p5

    move/from16 v13, p9

    goto :goto_a

    :cond_1e
    move/from16 p9, v4

    move/from16 v13, p9

    const/4 v10, 0x1

    :goto_a
    if-eqz p27, :cond_1f

    if-eqz p19, :cond_20

    :cond_1f
    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move/from16 p5, v10

    const/4 v10, 0x2

    goto/16 :goto_2c

    :cond_20
    if-nez v16, :cond_21

    if-nez v17, :cond_21

    if-nez v19, :cond_21

    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p5, v10

    move-object/from16 v6, v20

    :goto_b
    const/4 v4, 0x5

    goto/16 :goto_28

    :cond_21
    if-eqz v16, :cond_23

    if-nez v17, :cond_23

    .line 46
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz p3, :cond_22

    .line 47
    instance-of v2, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v2, :cond_22

    const/16 v2, 0x8

    goto :goto_c

    :cond_22
    const/4 v2, 0x5

    :goto_c
    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p5, v10

    move-object/from16 v6, v20

    move/from16 v20, p3

    move v10, v2

    goto/16 :goto_29

    :cond_23
    if-nez v16, :cond_25

    if-eqz v17, :cond_25

    .line 48
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v6, v20

    const/16 v13, 0x8

    invoke-virtual {v1, v8, v6, v2, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-eqz p3, :cond_24

    move-object/from16 v15, p6

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v7, v15, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move-object/from16 v13, p11

    move v4, v2

    move-object v7, v8

    move/from16 p5, v10

    goto/16 :goto_28

    :cond_24
    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p5, v10

    goto :goto_b

    :cond_25
    move-object/from16 v15, p6

    move-object/from16 v6, v20

    if-eqz v16, :cond_24

    if-eqz v17, :cond_24

    .line 50
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v2, p11

    .line 51
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 p5, v10

    .line 52
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/16 v16, 0x6

    if-eqz v24, :cond_3a

    if-nez v3, :cond_2a

    if-nez v5, :cond_27

    if-nez v13, :cond_27

    .line 53
    iget-boolean v5, v9, Landroidx/constraintlayout/core/SolverVariable;->j:Z

    if-eqz v5, :cond_26

    iget-boolean v5, v6, Landroidx/constraintlayout/core/SolverVariable;->j:Z

    if-eqz v5, :cond_26

    .line 54
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v3, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 55
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v8, v6, v2, v13}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    return-void

    :cond_26
    const/16 v5, 0x8

    const/16 v17, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x0

    goto :goto_d

    :cond_27
    const/4 v5, 0x5

    const/16 v17, 0x5

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v23, 0x1

    .line 56
    :goto_d
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v1, :cond_29

    instance-of v1, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v1, :cond_28

    goto :goto_f

    :cond_28
    move-object v1, v9

    move v9, v5

    move-object v5, v1

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v7, v8

    move/from16 v8, v16

    move/from16 v25, v20

    move/from16 v20, v19

    move/from16 v19, v17

    move/from16 v17, v3

    :goto_e
    move-object/from16 v3, p7

    goto/16 :goto_1d

    :cond_29
    :goto_f
    move-object v1, v9

    move v9, v5

    move-object v5, v1

    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move/from16 v8, v16

    move/from16 v25, v20

    move-object/from16 v3, p7

    move/from16 v20, v19

    const/16 v19, 0x4

    goto/16 :goto_1d

    :cond_2a
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2d

    .line 57
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v1, :cond_2c

    instance-of v1, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v1, :cond_2b

    goto :goto_11

    :cond_2b
    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    const/16 v19, 0x5

    :goto_10
    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x0

    goto :goto_e

    :cond_2c
    :goto_11
    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    :goto_12
    const/16 v19, 0x4

    goto :goto_10

    :cond_2d
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2e

    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/16 v9, 0x8

    goto :goto_12

    :cond_2e
    const/4 v1, 0x3

    if-ne v3, v1, :cond_39

    .line 58
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    move/from16 v17, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_31

    if-eqz p20, :cond_30

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    if-eqz p3, :cond_2f

    const/4 v8, 0x5

    :goto_13
    const/16 v9, 0x8

    :goto_14
    const/16 v19, 0x5

    :goto_15
    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    goto/16 :goto_1d

    :cond_2f
    const/4 v8, 0x4

    goto :goto_13

    :cond_30
    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/16 v8, 0x8

    goto :goto_13

    :cond_31
    if-eqz p17, :cond_34

    move/from16 v3, p23

    const/4 v1, 0x2

    if-eq v3, v1, :cond_33

    const/4 v1, 0x1

    if-ne v3, v1, :cond_32

    goto :goto_16

    :cond_32
    const/16 v1, 0x8

    const/4 v3, 0x5

    goto :goto_17

    :cond_33
    :goto_16
    const/4 v1, 0x5

    const/4 v3, 0x4

    :goto_17
    move/from16 v19, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    move-object/from16 v3, p7

    :goto_18
    move v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :cond_34
    if-lez v5, :cond_35

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    goto :goto_14

    :cond_35
    if-nez v5, :cond_38

    if-nez v13, :cond_38

    if-nez p20, :cond_36

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    const/16 v19, 0x8

    goto :goto_15

    :cond_36
    if-eq v11, v10, :cond_37

    if-eq v4, v10, :cond_37

    const/4 v1, 0x4

    goto :goto_19

    :cond_37
    const/4 v1, 0x5

    :goto_19
    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    goto :goto_18

    :cond_38
    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    const/16 v19, 0x4

    goto :goto_15

    :cond_39
    move/from16 v17, v3

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v23, 0x0

    :goto_1a
    const/16 v25, 0x0

    goto :goto_1d

    :cond_3a
    move/from16 v17, v3

    .line 59
    iget-boolean v1, v9, Landroidx/constraintlayout/core/SolverVariable;->j:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, v6, Landroidx/constraintlayout/core/SolverVariable;->j:Z

    if-eqz v1, :cond_3c

    .line 60
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move/from16 p21, p16

    move/from16 p20, v1

    move/from16 p24, v3

    move/from16 p25, v4

    move-object/from16 p22, v6

    move-object/from16 p18, v7

    move-object/from16 p23, v8

    move-object/from16 p19, v9

    .line 62
    invoke-virtual/range {p17 .. p25}, Landroidx/constraintlayout/core/LinearSystem;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move-object/from16 v1, p17

    move-object/from16 v7, p23

    if-eqz p3, :cond_5b

    if-eqz p5, :cond_5b

    .line 63
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_3b

    .line 64
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v15

    :goto_1b
    move-object/from16 v3, p7

    goto :goto_1c

    :cond_3b
    const/4 v15, 0x0

    goto :goto_1b

    :goto_1c
    if-eq v6, v3, :cond_5b

    const/4 v2, 0x5

    .line 65
    invoke-virtual {v1, v3, v7, v15, v2}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    return-void

    :cond_3c
    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    move/from16 v8, v16

    const/4 v9, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    goto :goto_1a

    :goto_1d
    if-eqz v23, :cond_3d

    if-ne v5, v6, :cond_3d

    if-eq v11, v10, :cond_3d

    const/16 v23, 0x0

    const/16 v26, 0x0

    goto :goto_1e

    :cond_3d
    const/16 v26, 0x1

    :goto_1e
    if-eqz v20, :cond_3f

    if-nez v24, :cond_3e

    if-nez p18, :cond_3e

    if-nez p20, :cond_3e

    if-ne v5, v15, :cond_3e

    if-ne v6, v3, :cond_3e

    const/16 v9, 0x8

    const/16 v20, 0x0

    const/16 v26, 0x8

    const/16 v27, 0x0

    :goto_1f
    move-object v8, v4

    goto :goto_20

    :cond_3e
    move/from16 v20, p3

    move/from16 v27, v26

    move/from16 v26, v9

    move v9, v8

    goto :goto_1f

    .line 66
    :goto_20
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v4

    move-object/from16 v28, v8

    .line 67
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v8

    move-object v3, v5

    move/from16 p8, v13

    move/from16 v14, v17

    move-object/from16 v12, v28

    move-object/from16 v13, p11

    move/from16 v5, p16

    .line 68
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move-object v5, v3

    move/from16 v9, v26

    move/from16 v26, v27

    goto :goto_21

    :cond_3f
    move-object v12, v4

    move/from16 p8, v13

    move/from16 v14, v17

    move-object/from16 v13, p11

    move/from16 v20, p3

    .line 69
    :goto_21
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_41

    .line 70
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    if-nez v3, :cond_40

    goto/16 :goto_30

    .line 71
    :cond_40
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_5b

    :cond_41
    if-eqz v23, :cond_44

    if-eqz v20, :cond_43

    if-eq v5, v6, :cond_43

    if-nez v24, :cond_43

    .line 72
    instance-of v3, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v3, :cond_42

    instance-of v3, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v3, :cond_43

    :cond_42
    move/from16 v9, v16

    .line 73
    :cond_43
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v9}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 74
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v7, v6, v3, v9}, Landroidx/constraintlayout/core/LinearSystem;->g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_44
    if-eqz v20, :cond_45

    if-eqz p21, :cond_45

    .line 75
    instance-of v3, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v3, :cond_45

    instance-of v3, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v3, :cond_45

    if-eq v12, v10, :cond_45

    move/from16 v3, v16

    move v9, v3

    const/16 v21, 0x1

    goto :goto_22

    :cond_45
    move/from16 v3, v19

    move/from16 v21, v26

    :goto_22
    if-eqz v21, :cond_51

    if-eqz v25, :cond_4e

    if-eqz p20, :cond_46

    if-eqz p4, :cond_4e

    :cond_46
    if-eq v11, v10, :cond_48

    if-ne v12, v10, :cond_47

    goto :goto_23

    :cond_47
    move/from16 v16, v3

    .line 76
    :cond_48
    :goto_23
    instance-of v4, v11, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v4, :cond_49

    instance-of v4, v12, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v4, :cond_4a

    :cond_49
    const/16 v16, 0x5

    .line 77
    :cond_4a
    instance-of v4, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v4, :cond_4b

    instance-of v4, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v4, :cond_4c

    :cond_4b
    const/16 v16, 0x5

    :cond_4c
    if-eqz p20, :cond_4d

    const/4 v4, 0x5

    goto :goto_24

    :cond_4d
    move/from16 v4, v16

    .line 78
    :goto_24
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4e
    if-eqz v20, :cond_50

    .line 79
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_50

    if-nez p20, :cond_50

    if-eq v11, v10, :cond_4f

    if-ne v12, v10, :cond_50

    :cond_4f
    const/4 v10, 0x4

    goto :goto_25

    :cond_50
    move v10, v3

    .line 80
    :goto_25
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v10}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 81
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v7, v6, v3, v10}, Landroidx/constraintlayout/core/LinearSystem;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_51
    if-eqz v20, :cond_53

    if-ne v15, v5, :cond_52

    .line 82
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    goto :goto_26

    :cond_52
    const/4 v3, 0x0

    :goto_26
    if-eq v5, v15, :cond_53

    const/4 v4, 0x5

    .line 83
    invoke-virtual {v1, v2, v15, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_53
    if-eqz v20, :cond_54

    if-eqz v24, :cond_54

    if-nez p14, :cond_54

    if-nez p8, :cond_54

    if-eqz v24, :cond_55

    const/4 v3, 0x3

    if-ne v14, v3, :cond_55

    const/16 v4, 0x8

    const/4 v10, 0x0

    .line 84
    invoke-virtual {v1, v7, v2, v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_54
    const/4 v4, 0x5

    goto :goto_27

    :cond_55
    const/4 v10, 0x0

    const/4 v4, 0x5

    .line 85
    invoke-virtual {v1, v7, v2, v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_27
    move v10, v4

    goto :goto_29

    :goto_28
    move/from16 v20, p3

    goto :goto_27

    :goto_29
    if-eqz v20, :cond_5b

    if-eqz p5, :cond_5b

    .line 86
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_56

    .line 87
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v15

    :goto_2a
    move-object/from16 v3, p7

    goto :goto_2b

    :cond_56
    const/4 v15, 0x0

    goto :goto_2a

    :goto_2b
    if-eq v6, v3, :cond_5b

    .line 88
    invoke-virtual {v1, v3, v7, v15, v10}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    return-void

    :goto_2c
    if-ge v11, v10, :cond_5b

    if-eqz p3, :cond_5b

    if-eqz p5, :cond_5b

    const/4 v10, 0x0

    const/16 v13, 0x8

    .line 89
    invoke-virtual {v1, v2, v15, v10, v13}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 90
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez p2, :cond_58

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_57

    goto :goto_2d

    :cond_57
    const/4 v10, 0x0

    goto :goto_2e

    :cond_58
    :goto_2d
    const/4 v10, 0x1

    :goto_2e
    if-nez p2, :cond_5a

    .line 91
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_5a

    .line 92
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 93
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_59

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v22, 0x0

    aget-object v4, v2, v22

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_59

    const/16 v21, 0x1

    aget-object v2, v2, v21

    if-ne v2, v5, :cond_59

    move/from16 v10, v21

    goto :goto_2f

    :cond_59
    const/4 v10, 0x0

    :cond_5a
    :goto_2f
    if-eqz v10, :cond_5b

    const/4 v10, 0x0

    const/16 v13, 0x8

    .line 94
    invoke-virtual {v1, v3, v7, v10, v13}, Landroidx/constraintlayout/core/LinearSystem;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_5b
    :goto_30
    return-void
.end method

.method public final f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .locals 10

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->l:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 2
    .line 3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 4
    .line 5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 6
    .line 7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 8
    .line 9
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 10
    .line 11
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 15
    .line 16
    if-ne p1, v7, :cond_c

    .line 17
    .line 18
    if-ne p3, v7, :cond_8

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const/4 v9, 0x1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    :cond_0
    if-eqz p3, :cond_2

    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    :cond_1
    move p1, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0, v2, p2, v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4, p2, v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 59
    .line 60
    .line 61
    move p1, v9

    .line 62
    :goto_0
    if-eqz p4, :cond_3

    .line 63
    .line 64
    invoke-virtual {p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_4

    .line 69
    .line 70
    :cond_3
    if-eqz v8, :cond_5

    .line 71
    .line 72
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_5

    .line 77
    .line 78
    :cond_4
    move v9, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p0, v3, p2, v3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v5, p2, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 84
    .line 85
    .line 86
    :goto_1
    if-eqz p1, :cond_6

    .line 87
    .line 88
    if-eqz v9, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    if-eqz p1, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_7
    if-eqz v9, :cond_1c

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_8
    if-eq p3, v2, :cond_b

    .line 131
    .line 132
    if-ne p3, v4, :cond_9

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_9
    if-eq p3, v3, :cond_a

    .line 136
    .line 137
    if-ne p3, v5, :cond_1c

    .line 138
    .line 139
    :cond_a
    invoke-virtual {p0, v3, p2, p3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v5, p2, p3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_b
    :goto_2
    invoke-virtual {p0, v2, p2, p3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 158
    .line 159
    .line 160
    :try_start_0
    invoke-virtual {p0, v4, p2, p3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    throw p1

    .line 177
    :cond_c
    if-ne p1, v1, :cond_e

    .line 178
    .line 179
    if-eq p3, v2, :cond_d

    .line 180
    .line 181
    if-ne p3, v4, :cond_e

    .line 182
    .line 183
    :cond_d
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_e
    if-ne p1, v0, :cond_10

    .line 210
    .line 211
    if-eq p3, v3, :cond_f

    .line 212
    .line 213
    if-ne p3, v5, :cond_10

    .line 214
    .line 215
    :cond_f
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2, p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p2, p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p2, p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_10
    if-ne p1, v1, :cond_11

    .line 242
    .line 243
    if-ne p3, v1, :cond_11

    .line 244
    .line 245
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    invoke-virtual {p1, p4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    invoke-virtual {p1, p4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_11
    if-ne p1, v0, :cond_12

    .line 280
    .line 281
    if-ne p3, v0, :cond_12

    .line 282
    .line 283
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 288
    .line 289
    .line 290
    move-result-object p4

    .line 291
    invoke-virtual {p1, p4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 299
    .line 300
    .line 301
    move-result-object p4

    .line 302
    invoke-virtual {p1, p4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_12
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    .line 326
    .line 327
    .line 328
    move-result p3

    .line 329
    if-eqz p3, :cond_1c

    .line 330
    .line 331
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 332
    .line 333
    if-ne p1, p3, :cond_14

    .line 334
    .line 335
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    if-eqz p1, :cond_13

    .line 344
    .line 345
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 346
    .line 347
    .line 348
    :cond_13
    if-eqz p3, :cond_1b

    .line 349
    .line 350
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_14
    if-eq p1, v3, :cond_18

    .line 355
    .line 356
    if-ne p1, v5, :cond_15

    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_15
    if-eq p1, v2, :cond_16

    .line 360
    .line 361
    if-ne p1, v4, :cond_1b

    .line 362
    .line 363
    :cond_16
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 364
    .line 365
    .line 366
    move-result-object p3

    .line 367
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 368
    .line 369
    if-eq v0, p2, :cond_17

    .line 370
    .line 371
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 372
    .line 373
    .line 374
    :cond_17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 383
    .line 384
    .line 385
    move-result-object p3

    .line 386
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_1b

    .line 391
    .line 392
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 400
    .line 401
    .line 402
    move-result-object p3

    .line 403
    if-eqz p3, :cond_19

    .line 404
    .line 405
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 406
    .line 407
    .line 408
    :cond_19
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 409
    .line 410
    .line 411
    move-result-object p3

    .line 412
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 413
    .line 414
    if-eq v1, p2, :cond_1a

    .line 415
    .line 416
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 417
    .line 418
    .line 419
    :cond_1a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 428
    .line 429
    .line 430
    move-result-object p3

    .line 431
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_1b

    .line 436
    .line 437
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 441
    .line 442
    .line 443
    :cond_1b
    :goto_4
    invoke-virtual {v6, p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 444
    .line 445
    .line 446
    :cond_1c
    return-void
.end method

.method public final g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 6
    .line 7
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    .line 9
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final h(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_8
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    .line 14
    aget-object p1, p1, v0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public final l()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 10
    .line 11
    return v0
.end method

.method public final m(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    .line 11
    if-ne v1, p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    .line 27
    if-ne v1, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final n(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    .line 11
    if-ne v1, p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    .line 27
    if-ne v1, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final o()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 10
    .line 11
    return v0
.end method

.method public final p()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 18
    .line 19
    return v0
.end method

.method public final q()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 18
    .line 19
    return v0
.end method

.method public final r(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v1

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 16
    .line 17
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    move v3, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v3, v1

    .line 24
    :goto_1
    add-int/2addr p1, v3

    .line 25
    if-ge p1, v0, :cond_6

    .line 26
    .line 27
    goto :goto_5

    .line 28
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    move p1, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move p1, v1

    .line 37
    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    move v3, v2

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    move v3, v1

    .line 46
    :goto_3
    add-int/2addr p1, v3

    .line 47
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 48
    .line 49
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    move v3, v2

    .line 54
    goto :goto_4

    .line 55
    :cond_5
    move v3, v1

    .line 56
    :goto_4
    add-int/2addr p1, v3

    .line 57
    if-ge p1, v0, :cond_6

    .line 58
    .line 59
    :goto_5
    return v2

    .line 60
    :cond_6
    return v1
.end method

.method public final s(II)Z
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v1, v0

    .line 32
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/2addr p1, v0

    .line 43
    sub-int/2addr v1, p1

    .line 44
    if-lt v1, p2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr v1, v0

    .line 76
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    add-int/2addr p1, v0

    .line 87
    sub-int/2addr v1, p1

    .line 88
    if-lt v1, p2, :cond_1

    .line 89
    .line 90
    :goto_0
    const/4 p1, 0x1

    .line 91
    return p1

    .line 92
    :cond_1
    const/4 p1, 0x0

    .line 93
    return p1
.end method

.method public final t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "id: "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, " "

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "("

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", "

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ") - ("

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " x "

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 65
    .line 66
    const-string v2, ")"

    .line 67
    .line 68
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/a;->g(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public final u(I)Z
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    aget-object v1, v0, p1

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    if-eq v2, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    add-int/2addr p1, v1

    .line 17
    aget-object p1, v0, p1

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    .line 25
    if-ne v0, p1, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-ne v1, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final w()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-ne v1, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method
