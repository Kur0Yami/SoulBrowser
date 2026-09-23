.class Lcom/mycompany/app/main/MainListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/list/ListTask$ListTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 11
    .line 12
    :cond_0
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final d()Lcom/mycompany/app/main/MainListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    return-object v0
.end method

.method public final e()Lcom/mycompany/app/main/MainListAdapter2;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->q0:I

    .line 11
    .line 12
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 13
    .line 14
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefUtil;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->r0:I

    .line 21
    .line 22
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 23
    .line 24
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefUtil;->e(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->s0:Z

    .line 31
    .line 32
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 33
    .line 34
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefUtil;->f(I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->t0:I

    .line 41
    .line 42
    sget v2, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 43
    .line 44
    if-ne v1, v2, :cond_1

    .line 45
    .line 46
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->u0:I

    .line 47
    .line 48
    sget v2, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/4 v1, 0x1

    .line 54
    const-wide/16 v2, 0xc8

    .line 55
    .line 56
    invoke-virtual {v0, v2, v3, v1}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$1;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->g:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    :cond_0
    sget v3, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    goto/16 :goto_12

    .line 23
    .line 24
    :cond_1
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/16 v4, 0xd

    .line 28
    .line 29
    if-ne v1, v4, :cond_2

    .line 30
    .line 31
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 32
    .line 33
    :cond_2
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    goto/16 :goto_11

    .line 38
    .line 39
    :cond_3
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefUtil;->d(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v5, v0, Lcom/mycompany/app/main/MainListView;->q0:I

    .line 44
    .line 45
    const/4 v6, -0x1

    .line 46
    if-eq v5, v1, :cond_5

    .line 47
    .line 48
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 49
    .line 50
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 51
    .line 52
    if-eqz v7, :cond_4

    .line 53
    .line 54
    const v7, -0xdededf

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move v7, v6

    .line 59
    :goto_0
    invoke-virtual {v5, v7}, Lcom/mycompany/app/fragment/FragmentExpandView;->setBackColor(I)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object v5, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 63
    .line 64
    if-eqz v5, :cond_6

    .line 65
    .line 66
    iget v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 67
    .line 68
    iput v7, v0, Lcom/mycompany/app/main/MainListView;->k0:I

    .line 69
    .line 70
    iget v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 71
    .line 72
    iput v5, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    iput v6, v0, Lcom/mycompany/app/main/MainListView;->k0:I

    .line 76
    .line 77
    iput v6, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 78
    .line 79
    :goto_1
    iget v5, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 80
    .line 81
    invoke-static {v5}, Lcom/mycompany/app/pref/PrefUtil;->e(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget v7, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 86
    .line 87
    invoke-static {v7}, Lcom/mycompany/app/pref/PrefUtil;->f(I)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    sget v8, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 92
    .line 93
    sget v9, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 94
    .line 95
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->q0:I

    .line 96
    .line 97
    if-ne v10, v1, :cond_8

    .line 98
    .line 99
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->r0:I

    .line 100
    .line 101
    if-ne v10, v5, :cond_8

    .line 102
    .line 103
    iget-boolean v10, v0, Lcom/mycompany/app/main/MainListView;->s0:Z

    .line 104
    .line 105
    if-ne v10, v7, :cond_8

    .line 106
    .line 107
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->t0:I

    .line 108
    .line 109
    if-ne v10, v8, :cond_8

    .line 110
    .line 111
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->u0:I

    .line 112
    .line 113
    if-eq v10, v9, :cond_7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    move v10, v3

    .line 117
    goto :goto_3

    .line 118
    :cond_8
    :goto_2
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 119
    .line 120
    invoke-static {v10}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    iput-boolean v10, v0, Lcom/mycompany/app/main/MainListView;->j0:Z

    .line 125
    .line 126
    move v10, v2

    .line 127
    :goto_3
    iput v1, v0, Lcom/mycompany/app/main/MainListView;->q0:I

    .line 128
    .line 129
    iput v5, v0, Lcom/mycompany/app/main/MainListView;->r0:I

    .line 130
    .line 131
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainListView;->s0:Z

    .line 132
    .line 133
    iput v8, v0, Lcom/mycompany/app/main/MainListView;->t0:I

    .line 134
    .line 135
    iput v9, v0, Lcom/mycompany/app/main/MainListView;->u0:I

    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 138
    .line 139
    if-eqz v1, :cond_b

    .line 140
    .line 141
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 142
    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    goto :goto_4

    .line 150
    :cond_9
    move v1, v3

    .line 151
    :goto_4
    iget-object v5, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 152
    .line 153
    if-eqz v5, :cond_a

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    goto :goto_5

    .line 160
    :cond_a
    move v5, v3

    .line 161
    :goto_5
    if-ge v5, v1, :cond_b

    .line 162
    .line 163
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 164
    .line 165
    sub-int/2addr v1, v2

    .line 166
    invoke-virtual {v5, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 167
    .line 168
    .line 169
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 170
    .line 171
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 172
    .line 173
    if-eqz v5, :cond_19

    .line 174
    .line 175
    iget-object v7, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 176
    .line 177
    if-nez v7, :cond_c

    .line 178
    .line 179
    goto/16 :goto_b

    .line 180
    .line 181
    :cond_c
    iget v7, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 182
    .line 183
    iput v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->a:I

    .line 184
    .line 185
    iget-boolean v7, v0, Lcom/mycompany/app/main/MainListView;->e:Z

    .line 186
    .line 187
    iput-boolean v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->b:Z

    .line 188
    .line 189
    invoke-virtual {v5}, Lcom/mycompany/app/list/ListTask;->d()Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    iput-boolean v5, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->o:Z

    .line 194
    .line 195
    if-nez v10, :cond_f

    .line 196
    .line 197
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 198
    .line 199
    if-eqz v5, :cond_f

    .line 200
    .line 201
    iget-boolean v1, v5, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 202
    .line 203
    iput-boolean v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 204
    .line 205
    iput-boolean v3, v5, Lcom/mycompany/app/main/MainListAdapter;->C:Z

    .line 206
    .line 207
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->v:Lcom/mycompany/app/main/MainListLoader;

    .line 208
    .line 209
    if-eqz v1, :cond_d

    .line 210
    .line 211
    const/4 v4, 0x0

    .line 212
    iput-object v4, v1, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 213
    .line 214
    :cond_d
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 215
    .line 216
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 217
    .line 218
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 219
    .line 220
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 221
    .line 222
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 223
    .line 224
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 225
    .line 226
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 227
    .line 228
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 229
    .line 230
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 231
    .line 232
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 233
    .line 234
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 235
    .line 236
    iput v1, v5, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 237
    .line 238
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 239
    .line 240
    iput v1, v5, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 241
    .line 242
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 243
    .line 244
    if-eqz v1, :cond_e

    .line 245
    .line 246
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_e
    move v1, v6

    .line 250
    :goto_6
    iput v1, v5, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 251
    .line 252
    iput v6, v5, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 253
    .line 254
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 255
    .line 256
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->s:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v5}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_b

    .line 262
    .line 263
    :cond_f
    new-instance v5, Lcom/mycompany/app/main/MainListAdapter;

    .line 264
    .line 265
    iget-object v7, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 266
    .line 267
    invoke-direct {v5}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 268
    .line 269
    .line 270
    new-instance v8, Landroid/util/SparseArray;

    .line 271
    .line 272
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 273
    .line 274
    .line 275
    iput-object v8, v5, Lcom/mycompany/app/expand/ExpandListAdapter;->b:Landroid/util/SparseArray;

    .line 276
    .line 277
    iput-boolean v2, v5, Lcom/mycompany/app/expand/ExpandListAdapter;->a:Z

    .line 278
    .line 279
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 280
    .line 281
    iget v8, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->a:I

    .line 282
    .line 283
    iput v8, v5, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 284
    .line 285
    iget-boolean v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->b:Z

    .line 286
    .line 287
    iput-boolean v9, v5, Lcom/mycompany/app/main/MainListAdapter;->f:Z

    .line 288
    .line 289
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 290
    .line 291
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 292
    .line 293
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 294
    .line 295
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 296
    .line 297
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 298
    .line 299
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 300
    .line 301
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 302
    .line 303
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 304
    .line 305
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 306
    .line 307
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 308
    .line 309
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 310
    .line 311
    iget v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 312
    .line 313
    iput v7, v5, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 314
    .line 315
    iget v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 316
    .line 317
    iput v7, v5, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 318
    .line 319
    iget-boolean v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->o:Z

    .line 320
    .line 321
    iput-boolean v7, v5, Lcom/mycompany/app/main/MainListAdapter;->o:Z

    .line 322
    .line 323
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 324
    .line 325
    if-eqz v7, :cond_10

    .line 326
    .line 327
    iget v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_10
    move v7, v6

    .line 331
    :goto_7
    iput v7, v5, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 332
    .line 333
    iget-boolean v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 334
    .line 335
    iput-boolean v7, v5, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 336
    .line 337
    iput v6, v5, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 338
    .line 339
    iget-object v7, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 340
    .line 341
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->s:Ljava/lang/String;

    .line 342
    .line 343
    const/16 v7, 0x12

    if-ne v8, v7, :cond_hist_date_only

    const-string v7, "yyyy.MM.dd HH:mm:ss"

    goto :goto_date_pattern

    :cond_hist_date_only
    const-string v7, "yyyy.MM.dd"

    :goto_date_pattern
    .line 344
    .line 345
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->A:Ljava/lang/String;

    .line 350
    .line 351
    const/16 v7, 0x18

    .line 352
    .line 353
    const/16 v9, 0x2a

    .line 354
    .line 355
    if-eq v8, v7, :cond_13

    .line 356
    .line 357
    const/16 v7, 0x1f

    .line 358
    .line 359
    if-eq v8, v7, :cond_13

    .line 360
    .line 361
    if-ne v8, v9, :cond_11

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_11
    iget-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 365
    .line 366
    if-eqz v7, :cond_13

    .line 367
    .line 368
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-eqz v7, :cond_12

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_12
    iput-boolean v2, v5, Lcom/mycompany/app/main/MainListAdapter;->C:Z

    .line 376
    .line 377
    new-instance v7, Lcom/mycompany/app/main/MainListAdapter$14;

    .line 378
    .line 379
    invoke-direct {v7, v5}, Lcom/mycompany/app/main/MainListAdapter$14;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 383
    .line 384
    .line 385
    :cond_13
    :goto_8
    new-instance v7, Lcom/mycompany/app/main/MainListLoader;

    .line 386
    .line 387
    new-instance v8, Lcom/mycompany/app/main/MainListAdapter$1;

    .line 388
    .line 389
    invoke-direct {v8, v5}, Lcom/mycompany/app/main/MainListAdapter$1;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    .line 390
    .line 391
    .line 392
    invoke-direct {v7, v1, v3, v8}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 393
    .line 394
    .line 395
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter;->v:Lcom/mycompany/app/main/MainListLoader;

    .line 396
    .line 397
    iput-object v5, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 398
    .line 399
    iget v7, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 400
    .line 401
    if-eq v7, v4, :cond_15

    .line 402
    .line 403
    const/16 v4, 0x20

    .line 404
    .line 405
    if-ne v7, v4, :cond_14

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_14
    if-ne v7, v9, :cond_17

    .line 409
    .line 410
    iput-boolean v2, v5, Lcom/mycompany/app/main/MainListAdapter;->r:Z

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_15
    :goto_9
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->U0:Lcom/mycompany/app/view/GlideRequests;

    .line 414
    .line 415
    if-nez v4, :cond_16

    .line 416
    .line 417
    invoke-static {v1}, Lcom/mycompany/app/view/GlideApp;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/mycompany/app/view/GlideRequests;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iput-object v1, v0, Lcom/mycompany/app/main/MainListView;->U0:Lcom/mycompany/app/view/GlideRequests;

    .line 422
    .line 423
    :cond_16
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 424
    .line 425
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->U0:Lcom/mycompany/app/view/GlideRequests;

    .line 426
    .line 427
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter;->v:Lcom/mycompany/app/main/MainListLoader;

    .line 428
    .line 429
    if-eqz v1, :cond_17

    .line 430
    .line 431
    iput-object v4, v1, Lcom/mycompany/app/main/MainListLoader;->e:Lcom/mycompany/app/view/GlideRequests;

    .line 432
    .line 433
    :cond_17
    :goto_a
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->m:Z

    .line 434
    .line 435
    if-eqz v1, :cond_18

    .line 436
    .line 437
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 438
    .line 439
    new-instance v4, Lcom/mycompany/app/main/MainListView$71;

    .line 440
    .line 441
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/MainListView$71;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 442
    .line 443
    .line 444
    iput-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->x:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 445
    .line 446
    :cond_18
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 447
    .line 448
    new-instance v4, Lcom/mycompany/app/main/MainListView$72;

    .line 449
    .line 450
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/MainListView$72;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 451
    .line 452
    .line 453
    iput-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->y:Lcom/mycompany/app/main/MainListAdapter$ListRectListener;

    .line 454
    .line 455
    new-instance v4, Lcom/mycompany/app/main/MainListView$73;

    .line 456
    .line 457
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/MainListView$73;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 458
    .line 459
    .line 460
    iput-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->z:Lcom/mycompany/app/main/MainListAdapter$ListHeadListener;

    .line 461
    .line 462
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 463
    .line 464
    invoke-virtual {v4, v1}, Lcom/mycompany/app/expand/ExpandListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 465
    .line 466
    .line 467
    :cond_19
    :goto_b
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->n0(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 468
    .line 469
    .line 470
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 471
    .line 472
    if-eq v1, v6, :cond_1a

    .line 473
    .line 474
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 475
    .line 476
    invoke-virtual {v4, v1}, Lcom/mycompany/app/main/MainListAdapter;->n(I)I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    iget v4, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 481
    .line 482
    iget-boolean v5, v0, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 483
    .line 484
    invoke-virtual {v0, v1, v4, v3, v5}, Lcom/mycompany/app/main/MainListView;->f0(IIZZ)V

    .line 485
    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_1a
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->j0:Z

    .line 489
    .line 490
    if-eqz v1, :cond_1b

    .line 491
    .line 492
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 493
    .line 494
    if-eq v1, v6, :cond_1b

    .line 495
    .line 496
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 497
    .line 498
    invoke-virtual {v4, v1}, Lcom/mycompany/app/main/MainListAdapter;->n(I)I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    iget v4, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 503
    .line 504
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/mycompany/app/main/MainListView;->f0(IIZZ)V

    .line 505
    .line 506
    .line 507
    goto :goto_c

    .line 508
    :cond_1b
    iget-boolean v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->r:Z

    .line 509
    .line 510
    if-eqz v1, :cond_1e

    .line 511
    .line 512
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->s:I

    .line 513
    .line 514
    if-eq v1, v6, :cond_1c

    .line 515
    .line 516
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 517
    .line 518
    invoke-virtual {v4, v1}, Lcom/mycompany/app/main/MainListAdapter;->n(I)I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    iget v4, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->s:I

    .line 523
    .line 524
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/mycompany/app/main/MainListView;->f0(IIZZ)V

    .line 525
    .line 526
    .line 527
    goto :goto_c

    .line 528
    :cond_1c
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 529
    .line 530
    if-eq v1, v6, :cond_1d

    .line 531
    .line 532
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 533
    .line 534
    invoke-virtual {v4, v1}, Lcom/mycompany/app/main/MainListAdapter;->n(I)I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    iget v4, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 539
    .line 540
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/mycompany/app/main/MainListView;->f0(IIZZ)V

    .line 541
    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_1d
    const/16 v1, -0xa

    .line 545
    .line 546
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/mycompany/app/main/MainListView;->f0(IIZZ)V

    .line 547
    .line 548
    .line 549
    :cond_1e
    :goto_c
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->j0:Z

    .line 550
    .line 551
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 552
    .line 553
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 554
    .line 555
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 556
    .line 557
    if-nez v1, :cond_1f

    .line 558
    .line 559
    move v1, v3

    .line 560
    goto :goto_d

    .line 561
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    :goto_d
    if-nez v1, :cond_21

    .line 566
    .line 567
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->N:Landroid/widget/ImageView;

    .line 568
    .line 569
    if-eqz v4, :cond_20

    .line 570
    .line 571
    const/16 v5, 0x8

    .line 572
    .line 573
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    .line 575
    .line 576
    :cond_20
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->P:Lcom/mycompany/app/view/MyFadeImage;

    .line 577
    .line 578
    if-eqz v4, :cond_24

    .line 579
    .line 580
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyFadeImage;->f()V

    .line 581
    .line 582
    .line 583
    goto :goto_f

    .line 584
    :cond_21
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->N:Landroid/widget/ImageView;

    .line 585
    .line 586
    if-eqz v4, :cond_23

    .line 587
    .line 588
    const/16 v5, 0x14

    .line 589
    .line 590
    if-le v1, v5, :cond_22

    .line 591
    .line 592
    move v5, v3

    .line 593
    goto :goto_e

    .line 594
    :cond_22
    const/4 v5, 0x4

    .line 595
    :goto_e
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    :cond_23
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->P:Lcom/mycompany/app/view/MyFadeImage;

    .line 599
    .line 600
    if-eqz v4, :cond_24

    .line 601
    .line 602
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyFadeImage;->d()V

    .line 603
    .line 604
    .line 605
    :cond_24
    :goto_f
    iget-boolean v4, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 606
    .line 607
    invoke-virtual {v0, v4, v6, v3, v3}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 608
    .line 609
    .line 610
    if-nez v1, :cond_25

    .line 611
    .line 612
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 613
    .line 614
    if-eqz v1, :cond_25

    .line 615
    .line 616
    invoke-virtual {v1}, Lcom/mycompany/app/list/ListTask;->f()Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-eqz v1, :cond_25

    .line 621
    .line 622
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainListView;->L:Z

    .line 623
    .line 624
    goto :goto_10

    .line 625
    :cond_25
    const-wide/16 v1, 0x0

    .line 626
    .line 627
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 628
    .line 629
    .line 630
    :goto_10
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 631
    .line 632
    if-eqz v1, :cond_26

    .line 633
    .line 634
    invoke-virtual {v1, p1}, Lcom/mycompany/app/main/MainListListener;->o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 635
    .line 636
    .line 637
    :cond_26
    :goto_11
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->l()V

    .line 638
    .line 639
    .line 640
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView;->y0:Z

    .line 641
    .line 642
    if-eqz p1, :cond_27

    .line 643
    .line 644
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->x()V

    .line 645
    .line 646
    .line 647
    :cond_27
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView;->B0:Z

    .line 648
    .line 649
    if-eqz p1, :cond_28

    .line 650
    .line 651
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->y()V

    .line 652
    .line 653
    .line 654
    :cond_28
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView;->D0:Z

    .line 655
    .line 656
    if-eqz p1, :cond_29

    .line 657
    .line 658
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->u()V

    .line 659
    .line 660
    .line 661
    :cond_29
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView;->R0:Z

    .line 662
    .line 663
    if-eqz p1, :cond_2a

    .line 664
    .line 665
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->B()V

    .line 666
    .line 667
    .line 668
    :cond_2a
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 669
    .line 670
    if-eqz p1, :cond_2b

    .line 671
    .line 672
    new-instance v0, Lcom/mycompany/app/main/MainListView$1$1;

    .line 673
    .line 674
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView$1$1;-><init>(Lcom/mycompany/app/main/MainListView$1;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 678
    .line 679
    .line 680
    :cond_2b
    :goto_12
    return-void
.end method
