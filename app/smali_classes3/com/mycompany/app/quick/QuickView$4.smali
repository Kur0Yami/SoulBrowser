.class Lcom/mycompany/app/quick/QuickView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickAdapter$QuickListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/quick/QuickView;->k0:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickView;->b(Lcom/mycompany/app/quick/QuickView;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->k()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->l()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->n(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o(Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;I)V
    .locals 18

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
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 8
    .line 9
    iget-boolean v4, v3, Lcom/mycompany/app/quick/QuickView;->p:Z

    .line 10
    .line 11
    if-nez v4, :cond_e

    .line 12
    .line 13
    iget-object v4, v3, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 14
    .line 15
    if-eqz v4, :cond_e

    .line 16
    .line 17
    iget-object v5, v3, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iget-boolean v5, v3, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    iget-boolean v5, v4, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v5, :cond_4

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget v5, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 46
    .line 47
    xor-int/2addr v5, v6

    .line 48
    iput-boolean v5, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 49
    .line 50
    invoke-virtual {v4, v2, v6}, Lcom/mycompany/app/quick/QuickAdapter;->y(IZ)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    iget-object v0, v3, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 54
    .line 55
    if-eqz v0, :cond_e

    .line 56
    .line 57
    iget-object v2, v3, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/mycompany/app/quick/QuickAdapter;->A()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v3, v3, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/quick/QuickControl;->c(II)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    invoke-virtual {v4, v2}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_5
    iget-boolean v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 82
    .line 83
    if-nez v4, :cond_a

    .line 84
    .line 85
    iget v0, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    iget-object v3, v3, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v4, v2}, Lcom/mycompany/app/main/MainUtil;->q4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v3, v0, v2}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->t(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    if-ne v0, v6, :cond_7

    .line 103
    .line 104
    iget-object v2, v3, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 105
    .line 106
    invoke-interface {v2, v0, v4}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->t(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_7
    const/4 v2, 0x3

    .line 111
    if-ne v0, v2, :cond_e

    .line 112
    .line 113
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 114
    .line 115
    if-eqz v0, :cond_e

    .line 116
    .line 117
    iget-object v0, v3, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 118
    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_8
    iget-boolean v0, v3, Lcom/mycompany/app/quick/QuickView;->H:Z

    .line 124
    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_9
    iput-boolean v6, v3, Lcom/mycompany/app/quick/QuickView;->H:Z

    .line 130
    .line 131
    iput-boolean v6, v3, Lcom/mycompany/app/quick/QuickView;->h0:Z

    .line 132
    .line 133
    new-instance v0, Lcom/mycompany/app/quick/QuickView$18;

    .line 134
    .line 135
    invoke-direct {v0, v3}, Lcom/mycompany/app/quick/QuickView$18;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v0}, Lcom/mycompany/app/quick/QuickView;->z(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_a
    iget-object v4, v3, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 143
    .line 144
    invoke-interface {v4}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->f()Lcom/mycompany/app/view/MyWebBody;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-nez v4, :cond_b

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_b
    const/4 v5, 0x2

    .line 152
    new-array v7, v5, [I

    .line 153
    .line 154
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    aget v9, v7, v8

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    add-int/2addr v10, v9

    .line 165
    aget v9, v7, v6

    .line 166
    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    add-int/2addr v4, v9

    .line 172
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 173
    .line 174
    .line 175
    aget v9, v7, v8

    .line 176
    .line 177
    aget v11, v7, v6

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 182
    .line 183
    if-eqz v0, :cond_d

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 194
    .line 195
    .line 196
    aget v0, v7, v8

    .line 197
    .line 198
    sub-int/2addr v0, v9

    .line 199
    div-int/lit8 v8, v5, 0x2

    .line 200
    .line 201
    add-int/2addr v8, v0

    .line 202
    aget v0, v7, v6

    .line 203
    .line 204
    sub-int/2addr v0, v11

    .line 205
    div-int/lit8 v6, v12, 0x2

    .line 206
    .line 207
    add-int/2addr v6, v0

    .line 208
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 209
    .line 210
    sub-int/2addr v6, v0

    .line 211
    iget-object v0, v3, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_c

    .line 218
    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    sub-int v8, v0, v8

    .line 224
    .line 225
    :cond_c
    move v15, v5

    .line 226
    move/from16 v17, v12

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_d
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 230
    .line 231
    mul-int/lit8 v0, v0, 0x5

    .line 232
    .line 233
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    div-int/lit8 v8, v6, 0x2

    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    div-int/2addr v6, v5

    .line 244
    move v15, v0

    .line 245
    move/from16 v17, v15

    .line 246
    .line 247
    :goto_1
    sub-int/2addr v9, v10

    .line 248
    add-int v13, v9, v8

    .line 249
    .line 250
    sub-int/2addr v11, v4

    .line 251
    add-int v14, v11, v6

    .line 252
    .line 253
    iget-object v12, v3, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 254
    .line 255
    iget-object v0, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 256
    .line 257
    move-object/from16 v16, v0

    .line 258
    .line 259
    invoke-interface/range {v12 .. v17}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->p(IIILjava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    :cond_e
    :goto_2
    return-void
.end method

.method public final p(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 17
    .line 18
    const-string v3, "mNewsAllow"

    .line 19
    .line 20
    const/16 v4, 0x10

    .line 21
    .line 22
    invoke-static {v4, v2, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 26
    .line 27
    if-eq v1, p1, :cond_2

    .line 28
    .line 29
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 32
    .line 33
    const-string v2, "mNewsUse"

    .line 34
    .line 35
    invoke-static {v4, v1, v2, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    const/4 p1, 0x1

    .line 39
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickView;->g(Z)V

    .line 40
    .line 41
    .line 42
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->r()V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public final q(Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$4;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->p:Z

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v2, v1, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, p2, v2}, Lcom/mycompany/app/quick/QuickAdapter;->S(IZ)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/mycompany/app/quick/QuickView;->c(Lcom/mycompany/app/quick/QuickView;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->i(Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p2, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget p2, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 48
    .line 49
    if-nez p2, :cond_4

    .line 50
    .line 51
    iget-object p2, v0, Lcom/mycompany/app/quick/QuickView;->o:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method
