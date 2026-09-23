.class Lcom/mycompany/app/main/MainListView2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/list/ListTask$ListTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$1;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    iget-object v3, p0, Lcom/mycompany/app/main/MainListView2$1;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    invoke-virtual {v3, v1, v2, v0}, Lcom/mycompany/app/main/MainListView2;->H(JZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lcom/mycompany/app/main/MainListAdapter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/mycompany/app/main/MainListAdapter2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$1;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 4
    .line 5
    return-object v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$1;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$1;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_10

    .line 10
    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v3, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->q:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/fragment/FragmentTabPath;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 21
    .line 22
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->V:I

    .line 23
    .line 24
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->j:I

    .line 25
    .line 26
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->W:I

    .line 27
    .line 28
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 29
    .line 30
    const/4 v6, -0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 34
    .line 35
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput v6, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 39
    .line 40
    :goto_0
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 41
    .line 42
    const/16 v2, 0x11

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-ne v1, v2, :cond_5

    .line 47
    .line 48
    sget-boolean v4, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 49
    .line 50
    sget-boolean v5, Lcom/mycompany/app/pref/PrefList;->G:Z

    .line 51
    .line 52
    sget v8, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 53
    .line 54
    sget-boolean v9, Lcom/mycompany/app/pref/PrefList;->I:Z

    .line 55
    .line 56
    iget-boolean v10, v0, Lcom/mycompany/app/main/MainListView2;->e0:Z

    .line 57
    .line 58
    if-ne v10, v4, :cond_4

    .line 59
    .line 60
    iget-boolean v10, v0, Lcom/mycompany/app/main/MainListView2;->f0:Z

    .line 61
    .line 62
    if-ne v10, v5, :cond_4

    .line 63
    .line 64
    iget v10, v0, Lcom/mycompany/app/main/MainListView2;->g0:I

    .line 65
    .line 66
    if-ne v10, v8, :cond_4

    .line 67
    .line 68
    iget-boolean v10, v0, Lcom/mycompany/app/main/MainListView2;->h0:Z

    .line 69
    .line 70
    if-eq v10, v9, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v10, v7

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    :goto_1
    move v10, v3

    .line 76
    :goto_2
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainListView2;->e0:Z

    .line 77
    .line 78
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainListView2;->f0:Z

    .line 79
    .line 80
    iput v8, v0, Lcom/mycompany/app/main/MainListView2;->g0:I

    .line 81
    .line 82
    iput-boolean v9, v0, Lcom/mycompany/app/main/MainListView2;->h0:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v10, v7

    .line 86
    :goto_3
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-eqz v4, :cond_10

    .line 90
    .line 91
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    if-nez v8, :cond_6

    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_6
    iput v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->a:I

    .line 98
    .line 99
    iput-boolean v3, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->b:Z

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/mycompany/app/list/ListTask;->d()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    iput-boolean v4, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->o:Z

    .line 106
    .line 107
    if-nez v10, :cond_9

    .line 108
    .line 109
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 110
    .line 111
    if-eqz v4, :cond_9

    .line 112
    .line 113
    iget-boolean v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 114
    .line 115
    iput-boolean v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 116
    .line 117
    iput-boolean v7, v4, Lcom/mycompany/app/main/MainListAdapter2;->u:Z

    .line 118
    .line 119
    iget-object v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    iput-object v5, v1, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 124
    .line 125
    :cond_7
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 126
    .line 127
    iput-object v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 128
    .line 129
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 130
    .line 131
    iput-object v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 132
    .line 133
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 134
    .line 135
    iput v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 136
    .line 137
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 138
    .line 139
    iput v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 140
    .line 141
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->j:I

    .line 142
    .line 143
    iput v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 144
    .line 145
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move v1, v6

    .line 153
    :goto_4
    iput v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->l:I

    .line 154
    .line 155
    iget-object v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v1, v4, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_9
    new-instance v4, Lcom/mycompany/app/view/MyManagerLinear;

    .line 165
    .line 166
    invoke-direct {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 167
    .line 168
    .line 169
    iput-object v4, v0, Lcom/mycompany/app/main/MainListView2;->z:Lcom/mycompany/app/view/MyManagerLinear;

    .line 170
    .line 171
    new-instance v4, Lcom/mycompany/app/main/MainListAdapter2;

    .line 172
    .line 173
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 174
    .line 175
    iget-object v9, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 176
    .line 177
    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v8, v4, Lcom/mycompany/app/main/MainListAdapter2;->d:Landroid/content/Context;

    .line 181
    .line 182
    iget v10, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->a:I

    .line 183
    .line 184
    iput v10, v4, Lcom/mycompany/app/main/MainListAdapter2;->e:I

    .line 185
    .line 186
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 187
    .line 188
    iget-object v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 189
    .line 190
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 191
    .line 192
    iget-object v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 193
    .line 194
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 195
    .line 196
    iget v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 197
    .line 198
    iput v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 199
    .line 200
    iget v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 201
    .line 202
    iput v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 203
    .line 204
    iget v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->j:I

    .line 205
    .line 206
    iput v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 207
    .line 208
    iget-object v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 209
    .line 210
    if-eqz v9, :cond_a

    .line 211
    .line 212
    iget v9, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_a
    move v9, v6

    .line 216
    :goto_5
    iput v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->l:I

    .line 217
    .line 218
    iget-boolean v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 219
    .line 220
    iput-boolean v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 221
    .line 222
    iget-object v9, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 223
    .line 224
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 225
    .line 226
    const-string v9, "yyyy.MM.dd"

    .line 227
    .line 228
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->s:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 235
    .line 236
    if-eqz v9, :cond_c

    .line 237
    .line 238
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_b

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_b
    iput-boolean v3, v4, Lcom/mycompany/app/main/MainListAdapter2;->u:Z

    .line 246
    .line 247
    new-instance v9, Lcom/mycompany/app/main/MainListAdapter2$10;

    .line 248
    .line 249
    invoke-direct {v9, v4}, Lcom/mycompany/app/main/MainListAdapter2$10;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 253
    .line 254
    .line 255
    :cond_c
    :goto_6
    new-instance v9, Lcom/mycompany/app/main/MainListLoader;

    .line 256
    .line 257
    new-instance v10, Lcom/mycompany/app/main/MainListAdapter2$1;

    .line 258
    .line 259
    invoke-direct {v10, v4}, Lcom/mycompany/app/main/MainListAdapter2$1;-><init>(Lcom/mycompany/app/main/MainListAdapter2;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {v9, v8, v7, v10}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 263
    .line 264
    .line 265
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 266
    .line 267
    iput-object v4, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 268
    .line 269
    new-instance v8, Lcom/mycompany/app/main/MainListView2$38;

    .line 270
    .line 271
    invoke-direct {v8, v0}, Lcom/mycompany/app/main/MainListView2$38;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 272
    .line 273
    .line 274
    iput-object v8, v4, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 275
    .line 276
    iget-boolean v8, v0, Lcom/mycompany/app/main/MainListView2;->j:Z

    .line 277
    .line 278
    if-eqz v8, :cond_d

    .line 279
    .line 280
    new-instance v8, Lcom/mycompany/app/main/MainListView2$39;

    .line 281
    .line 282
    invoke-direct {v8, v0}, Lcom/mycompany/app/main/MainListView2$39;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 283
    .line 284
    .line 285
    iput-object v8, v4, Lcom/mycompany/app/main/MainListAdapter2;->r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 286
    .line 287
    :cond_d
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 288
    .line 289
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->z:Lcom/mycompany/app/view/MyManagerLinear;

    .line 290
    .line 291
    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    .line 293
    .line 294
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 295
    .line 296
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 297
    .line 298
    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 299
    .line 300
    .line 301
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListView2;->k:Z

    .line 302
    .line 303
    if-nez v4, :cond_e

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_e
    if-ne v1, v2, :cond_f

    .line 307
    .line 308
    move v1, v3

    .line 309
    goto :goto_7

    .line 310
    :cond_f
    move v1, v7

    .line 311
    :goto_7
    new-instance v2, Lcom/mycompany/app/quick/ListDragHelper;

    .line 312
    .line 313
    new-instance v4, Lcom/mycompany/app/main/MainListView2$40;

    .line 314
    .line 315
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/MainListView2$40;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 316
    .line 317
    .line 318
    invoke-direct {v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 319
    .line 320
    .line 321
    iput-boolean v1, v2, Lcom/mycompany/app/quick/ListDragHelper;->e:Z

    .line 322
    .line 323
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 324
    .line 325
    iput v1, v2, Lcom/mycompany/app/quick/ListDragHelper;->f:I

    .line 326
    .line 327
    iput-object v4, v2, Lcom/mycompany/app/quick/ListDragHelper;->d:Lcom/mycompany/app/quick/ListDragHelper$ListDragListener;

    .line 328
    .line 329
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 330
    .line 331
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 332
    .line 333
    .line 334
    iput-object v1, v0, Lcom/mycompany/app/main/MainListView2;->A:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 335
    .line 336
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 339
    .line 340
    .line 341
    :cond_10
    :goto_8
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 342
    .line 343
    if-nez v1, :cond_11

    .line 344
    .line 345
    goto/16 :goto_c

    .line 346
    .line 347
    :cond_11
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/mycompany/app/list/ListTask;->b()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_12

    .line 358
    .line 359
    goto/16 :goto_c

    .line 360
    .line 361
    :cond_12
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->Z:Ljava/lang/String;

    .line 362
    .line 363
    const-string v4, "/"

    .line 364
    .line 365
    invoke-static {v1, v4}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    iput-object v8, v0, Lcom/mycompany/app/main/MainListView2;->Z:Ljava/lang/String;

    .line 370
    .line 371
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->Y:Ljava/util/HashMap;

    .line 372
    .line 373
    if-eqz v8, :cond_1a

    .line 374
    .line 375
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-eqz v8, :cond_13

    .line 380
    .line 381
    goto/16 :goto_b

    .line 382
    .line 383
    :cond_13
    iget-object v8, v0, Lcom/mycompany/app/main/MainListView2;->Y:Ljava/util/HashMap;

    .line 384
    .line 385
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    check-cast v8, Lcom/mycompany/app/main/MainListView2$ListPos;

    .line 390
    .line 391
    if-nez v8, :cond_14

    .line 392
    .line 393
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 394
    .line 395
    if-ne v1, v6, :cond_1b

    .line 396
    .line 397
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListAdapter2;->w(Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 404
    .line 405
    goto/16 :goto_c

    .line 406
    .line 407
    :cond_14
    iget-object v9, v0, Lcom/mycompany/app/main/MainListView2;->Y:Ljava/util/HashMap;

    .line 408
    .line 409
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    iget-object v1, v8, Lcom/mycompany/app/main/MainListView2$ListPos;->a:Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_15

    .line 419
    .line 420
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 421
    .line 422
    if-ne v1, v6, :cond_1b

    .line 423
    .line 424
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListAdapter2;->w(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 431
    .line 432
    goto :goto_c

    .line 433
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    iget-object v9, v8, Lcom/mycompany/app/main/MainListView2$ListPos;->a:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-nez v1, :cond_16

    .line 455
    .line 456
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 457
    .line 458
    if-ne v1, v6, :cond_1b

    .line 459
    .line 460
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 461
    .line 462
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListAdapter2;->w(Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 467
    .line 468
    goto :goto_c

    .line 469
    :cond_16
    iget-object v1, v8, Lcom/mycompany/app/main/MainListView2$ListPos;->a:Ljava/lang/String;

    .line 470
    .line 471
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 472
    .line 473
    iget v9, v8, Lcom/mycompany/app/main/MainListView2$ListPos;->b:I

    .line 474
    .line 475
    iget-object v10, v4, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 476
    .line 477
    if-eqz v10, :cond_18

    .line 478
    .line 479
    if-ltz v9, :cond_18

    .line 480
    .line 481
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-lt v9, v10, :cond_17

    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_17
    iget-object v4, v4, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 489
    .line 490
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 495
    .line 496
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_18
    :goto_9
    move-object v4, v5

    .line 500
    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-nez v1, :cond_19

    .line 505
    .line 506
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 507
    .line 508
    if-ne v1, v6, :cond_1b

    .line 509
    .line 510
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 511
    .line 512
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListAdapter2;->w(Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 517
    .line 518
    goto :goto_c

    .line 519
    :cond_19
    move-object v5, v8

    .line 520
    goto :goto_c

    .line 521
    :cond_1a
    :goto_b
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 522
    .line 523
    if-ne v1, v6, :cond_1b

    .line 524
    .line 525
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 526
    .line 527
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListAdapter2;->w(Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 532
    .line 533
    :cond_1b
    :goto_c
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 534
    .line 535
    if-eq v1, v6, :cond_1c

    .line 536
    .line 537
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 538
    .line 539
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainListAdapter2;->A(I)I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    iget v2, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 544
    .line 545
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 546
    .line 547
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 548
    .line 549
    .line 550
    goto :goto_d

    .line 551
    :cond_1c
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->a0:Z

    .line 552
    .line 553
    if-eqz v1, :cond_1d

    .line 554
    .line 555
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 556
    .line 557
    if-eq v1, v6, :cond_1d

    .line 558
    .line 559
    add-int/lit8 v2, v1, 0x1

    .line 560
    .line 561
    invoke-virtual {v0, v2, v1, v7, v7}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 562
    .line 563
    .line 564
    goto :goto_d

    .line 565
    :cond_1d
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 566
    .line 567
    if-eqz v1, :cond_1e

    .line 568
    .line 569
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 570
    .line 571
    if-eq v1, v6, :cond_1e

    .line 572
    .line 573
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 574
    .line 575
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainListAdapter2;->A(I)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    iget v2, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 580
    .line 581
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 582
    .line 583
    .line 584
    goto :goto_d

    .line 585
    :cond_1e
    if-eqz v5, :cond_1f

    .line 586
    .line 587
    move-object v8, v5

    .line 588
    iget v5, v8, Lcom/mycompany/app/main/MainListView2$ListPos;->b:I

    .line 589
    .line 590
    add-int/lit8 v1, v5, 0x1

    .line 591
    .line 592
    iget v4, v8, Lcom/mycompany/app/main/MainListView2$ListPos;->c:I

    .line 593
    .line 594
    const/4 v2, 0x1

    .line 595
    const/4 v3, 0x0

    .line 596
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/main/MainListView2;->E(IZZII)V

    .line 597
    .line 598
    .line 599
    goto :goto_d

    .line 600
    :cond_1f
    iget-boolean v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->r:Z

    .line 601
    .line 602
    if-eqz v1, :cond_22

    .line 603
    .line 604
    iget v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->s:I

    .line 605
    .line 606
    if-eq v1, v6, :cond_20

    .line 607
    .line 608
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 609
    .line 610
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainListAdapter2;->A(I)I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    iget v2, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->s:I

    .line 615
    .line 616
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 617
    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_20
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 621
    .line 622
    if-eq v1, v6, :cond_21

    .line 623
    .line 624
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 625
    .line 626
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainListAdapter2;->A(I)I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    iget v2, v0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 631
    .line 632
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 633
    .line 634
    .line 635
    goto :goto_d

    .line 636
    :cond_21
    const/16 v1, -0xa

    .line 637
    .line 638
    invoke-virtual {v0, v7, v1, v3, v7}, Lcom/mycompany/app/main/MainListView2;->D(IIZZ)V

    .line 639
    .line 640
    .line 641
    :cond_22
    :goto_d
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 642
    .line 643
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainListView2;->a0:Z

    .line 644
    .line 645
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 646
    .line 647
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 648
    .line 649
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 650
    .line 651
    if-nez v1, :cond_23

    .line 652
    .line 653
    move v1, v7

    .line 654
    goto :goto_e

    .line 655
    :cond_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    :goto_e
    if-nez v1, :cond_25

    .line 660
    .line 661
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->F:Lcom/mycompany/app/view/MyFadeImage;

    .line 662
    .line 663
    if-eqz v1, :cond_24

    .line 664
    .line 665
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeImage;->f()V

    .line 666
    .line 667
    .line 668
    :cond_24
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 669
    .line 670
    if-eqz v1, :cond_27

    .line 671
    .line 672
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 673
    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_25
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->F:Lcom/mycompany/app/view/MyFadeImage;

    .line 677
    .line 678
    if-eqz v1, :cond_26

    .line 679
    .line 680
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeImage;->d()V

    .line 681
    .line 682
    .line 683
    :cond_26
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 684
    .line 685
    if-eqz v1, :cond_27

    .line 686
    .line 687
    const/16 v2, 0x8

    .line 688
    .line 689
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    :cond_27
    :goto_f
    iget-boolean v1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 693
    .line 694
    invoke-virtual {v0, v6, v1, v7}, Lcom/mycompany/app/main/MainListView2;->B(IZZ)V

    .line 695
    .line 696
    .line 697
    const-wide/16 v1, 0x0

    .line 698
    .line 699
    invoke-virtual {v0, v1, v2, v7}, Lcom/mycompany/app/main/MainListView2;->H(JZ)V

    .line 700
    .line 701
    .line 702
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 703
    .line 704
    if-eqz v1, :cond_28

    .line 705
    .line 706
    invoke-virtual {v1, p1}, Lcom/mycompany/app/main/MainListListener;->o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 707
    .line 708
    .line 709
    :cond_28
    :goto_10
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView2;->m0:Z

    .line 710
    .line 711
    if-eqz p1, :cond_29

    .line 712
    .line 713
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->h()V

    .line 714
    .line 715
    .line 716
    :cond_29
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainListView2;->p0:Z

    .line 717
    .line 718
    if-eqz p1, :cond_2a

    .line 719
    .line 720
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->f()V

    .line 721
    .line 722
    .line 723
    :cond_2a
    return-void
.end method
