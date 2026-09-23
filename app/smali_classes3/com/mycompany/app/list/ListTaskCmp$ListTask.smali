.class Lcom/mycompany/app/list/ListTaskCmp$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/ListTaskCmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final A:Z

.field public final B:Ljava/lang/String;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:Z

.field public final h:Z

.field public i:Ljava/lang/String;

.field public j:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public k:Z

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/List;

.field public p:[Z

.field public q:[I

.field public r:[Z

.field public s:I

.field public t:Z

.field public u:Ljava/util/List;

.field public v:I

.field public w:Ljava/util/ArrayList;

.field public x:I

.field public final y:Z

.field public z:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/ListTaskCmp;ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->v:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->x:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/ListTaskCmp;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->g:Z

    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->h:Z

    .line 28
    .line 29
    iput-object p4, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean p5, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->k:Z

    .line 32
    .line 33
    iput-object p6, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->o:Ljava/util/List;

    .line 34
    .line 35
    iput-object p7, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->u:Ljava/util/List;

    .line 36
    .line 37
    iget-boolean p2, p1, Lcom/mycompany/app/list/ListTaskCmp;->i:Z

    .line 38
    .line 39
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->A:Z

    .line 40
    .line 41
    iget-object p2, p1, Lcom/mycompany/app/list/ListTaskCmp;->j:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->B:Ljava/lang/String;

    .line 44
    .line 45
    iget-boolean p2, p1, Lcom/mycompany/app/list/ListTaskCmp;->g:Z

    .line 46
    .line 47
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->y:Z

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p1, Lcom/mycompany/app/list/ListTaskCmp;->g:Z

    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/list/ListTaskCmp;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1f

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move-object v3, v2

    .line 17
    check-cast v3, Lcom/mycompany/app/list/ListTaskCmp;

    .line 18
    .line 19
    if-eqz v3, :cond_48

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/ListTaskCmp;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1f

    .line 28
    .line 29
    :cond_1
    iget-boolean v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->k:Z

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    xor-int/2addr v4, v1

    .line 40
    iput-boolean v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->k:Z

    .line 41
    .line 42
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->B:Ljava/lang/String;

    .line 43
    .line 44
    iget-boolean v5, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->A:Z

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    xor-int/2addr v6, v1

    .line 53
    :goto_0
    const/4 v7, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v6, v3, Lcom/mycompany/app/list/ListTaskCmp;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 56
    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    invoke-interface {v6}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 66
    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->t:Z

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/mycompany/app/main/MainListAdapter;->k()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    move-object v7, v6

    .line 76
    const/4 v6, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v6, 0x0

    .line 79
    goto :goto_0

    .line 80
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v8, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v8, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-eqz v5, :cond_6

    .line 95
    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    invoke-static {v2}, Lcom/mycompany/app/data/DataSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataSearch;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iget-object v8, v8, Lcom/mycompany/app/data/DataSearch;->a:Ljava/util/List;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const/4 v8, 0x0

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-static {v2}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    iget-object v8, v8, Lcom/mycompany/app/data/DataList;->a:Ljava/util/List;

    .line 112
    .line 113
    :goto_2
    if-eqz v8, :cond_13

    .line 114
    .line 115
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-nez v11, :cond_13

    .line 120
    .line 121
    new-instance v11, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .line 125
    .line 126
    if-eqz v7, :cond_7

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    goto :goto_3

    .line 133
    :cond_7
    const/4 v8, 0x0

    .line 134
    :goto_3
    iget-object v12, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->u:Ljava/util/List;

    .line 135
    .line 136
    if-eqz v12, :cond_8

    .line 137
    .line 138
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    goto :goto_4

    .line 143
    :cond_8
    const/4 v12, 0x0

    .line 144
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    move/from16 v16, v1

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v14, 0x0

    .line 153
    const/4 v15, 0x0

    .line 154
    :goto_5
    if-ge v9, v13, :cond_12

    .line 155
    .line 156
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v17

    .line 160
    add-int/lit8 v9, v9, 0x1

    .line 161
    .line 162
    move-object/from16 v10, v17

    .line 163
    .line 164
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 165
    .line 166
    move-object/from16 v17, v3

    .line 167
    .line 168
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 169
    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    goto/16 :goto_1f

    .line 173
    .line 174
    :cond_9
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->h:Z

    .line 175
    .line 176
    if-eqz v3, :cond_a

    .line 177
    .line 178
    iget-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUri;->r(Landroid/content/Context;Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_a

    .line 185
    .line 186
    iget-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v2, v3}, Lcom/mycompany/app/db/DbCmp;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object/from16 v3, v17

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->k:Z

    .line 195
    .line 196
    if-eqz v3, :cond_b

    .line 197
    .line 198
    if-nez v14, :cond_b

    .line 199
    .line 200
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 201
    .line 202
    move/from16 v18, v5

    .line 203
    .line 204
    iget-object v5, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_c

    .line 211
    .line 212
    move/from16 v14, v16

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_b
    move/from16 v18, v5

    .line 216
    .line 217
    :cond_c
    :goto_6
    if-ge v15, v8, :cond_d

    .line 218
    .line 219
    iget-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    iput-boolean v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 226
    .line 227
    if-eqz v3, :cond_e

    .line 228
    .line 229
    add-int/lit8 v15, v15, 0x1

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_d
    const/4 v3, 0x0

    .line 233
    iput-boolean v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 234
    .line 235
    :cond_e
    :goto_7
    if-ge v1, v12, :cond_f

    .line 236
    .line 237
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->u:Ljava/util/List;

    .line 238
    .line 239
    iget-object v5, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 240
    .line 241
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    iput-boolean v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 246
    .line 247
    if-eqz v3, :cond_10

    .line 248
    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_f
    const/4 v3, 0x0

    .line 253
    iput-boolean v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 254
    .line 255
    :cond_10
    :goto_8
    if-nez v18, :cond_11

    .line 256
    .line 257
    invoke-static {v10}, Lcom/mycompany/app/list/ListTaskCmp;->s(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 258
    .line 259
    .line 260
    :cond_11
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 266
    .line 267
    iget-object v5, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-object/from16 v3, v17

    .line 273
    .line 274
    move/from16 v5, v18

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_12
    move-object/from16 v17, v3

    .line 278
    .line 279
    move/from16 v18, v5

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_13
    move/from16 v16, v1

    .line 283
    .line 284
    move-object/from16 v17, v3

    .line 285
    .line 286
    move/from16 v18, v5

    .line 287
    .line 288
    const/4 v14, 0x0

    .line 289
    :goto_9
    if-nez v18, :cond_1b

    .line 290
    .line 291
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->o:Ljava/util/List;

    .line 292
    .line 293
    if-eqz v1, :cond_1b

    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_1b

    .line 300
    .line 301
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->o:Ljava/util/List;

    .line 308
    .line 309
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    const/4 v5, 0x0

    .line 314
    const/4 v7, 0x0

    .line 315
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-eqz v8, :cond_1a

    .line 320
    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    check-cast v8, Lcom/mycompany/app/main/MainUri$UriItem;

    .line 326
    .line 327
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 328
    .line 329
    if-eqz v9, :cond_14

    .line 330
    .line 331
    goto/16 :goto_1f

    .line 332
    .line 333
    :cond_14
    if-nez v8, :cond_15

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_15
    iget-object v9, v8, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v9}, Lcom/mycompany/app/compress/Compress;->y(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    if-nez v9, :cond_16

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_16
    if-ge v7, v1, :cond_17

    .line 346
    .line 347
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 348
    .line 349
    iget-object v10, v8, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-eqz v9, :cond_17

    .line 356
    .line 357
    add-int/lit8 v7, v7, 0x1

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_17
    invoke-static {v8}, Lcom/mycompany/app/list/ListTaskCmp;->r(Lcom/mycompany/app/main/MainUri$UriItem;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    if-nez v8, :cond_18

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_18
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    if-nez v5, :cond_19

    .line 373
    .line 374
    new-instance v5, Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .line 378
    .line 379
    :cond_19
    iget-object v8, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 380
    .line 381
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    iget v8, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->z:I

    .line 385
    .line 386
    add-int/lit8 v8, v8, 0x1

    .line 387
    .line 388
    iput v8, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->z:I

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_1a
    if-eqz v5, :cond_1b

    .line 392
    .line 393
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    .line 397
    .line 398
    :cond_1b
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 399
    .line 400
    if-eqz v1, :cond_1c

    .line 401
    .line 402
    goto/16 :goto_1f

    .line 403
    .line 404
    :cond_1c
    if-nez v18, :cond_1d

    .line 405
    .line 406
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->g:Z

    .line 407
    .line 408
    if-nez v1, :cond_1e

    .line 409
    .line 410
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_1d

    .line 417
    .line 418
    goto :goto_b

    .line 419
    :cond_1d
    move-object/from16 v21, v4

    .line 420
    .line 421
    move/from16 v19, v6

    .line 422
    .line 423
    goto/16 :goto_13

    .line 424
    .line 425
    :cond_1e
    :goto_b
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/DbCmp;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbCmp;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    const-string v8, "DbCmp_table"

    .line 434
    .line 435
    const/4 v11, 0x0

    .line 436
    const/4 v12, 0x0

    .line 437
    const/4 v9, 0x0

    .line 438
    const/4 v10, 0x0

    .line 439
    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 440
    .line 441
    .line 442
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 443
    if-eqz v3, :cond_28

    .line 444
    .line 445
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_28

    .line 450
    .line 451
    const-string v5, "_id"

    .line 452
    .line 453
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    const-string v7, "_dir"

    .line 458
    .line 459
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    const-string v8, "_dname"

    .line 464
    .line 465
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    const-string v9, "_path"

    .line 470
    .line 471
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v9

    .line 475
    const-string v10, "_name"

    .line 476
    .line 477
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    const-string v11, "_time"

    .line 482
    .line 483
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    const-string v12, "_size"

    .line 488
    .line 489
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    move-result v12

    .line 493
    const-string v13, "_count"

    .line 494
    .line 495
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    const-string v15, "_index"

    .line 500
    .line 501
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    move-result v15

    .line 505
    move/from16 v19, v1

    .line 506
    .line 507
    const-string v1, "_page"

    .line 508
    .line 509
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 513
    if-eqz v19, :cond_1f

    .line 514
    .line 515
    move/from16 v19, v6

    .line 516
    .line 517
    :try_start_2
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 520
    .line 521
    .line 522
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 523
    goto :goto_c

    .line 524
    :catch_0
    move-object/from16 v21, v4

    .line 525
    .line 526
    goto/16 :goto_12

    .line 527
    .line 528
    :cond_1f
    move/from16 v19, v6

    .line 529
    .line 530
    const/4 v6, 0x0

    .line 531
    :goto_c
    move-object/from16 v21, v4

    .line 532
    .line 533
    move/from16 v20, v14

    .line 534
    .line 535
    const/4 v14, 0x0

    .line 536
    :goto_d
    :try_start_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-static {v4}, Lcom/mycompany/app/compress/Compress;->y(Ljava/lang/String;)Z

    .line 541
    .line 542
    .line 543
    move-result v22

    .line 544
    if-nez v22, :cond_20

    .line 545
    .line 546
    move/from16 v22, v10

    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_20
    move/from16 v22, v10

    .line 550
    .line 551
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v10

    .line 555
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 556
    .line 557
    .line 558
    move-result v23

    .line 559
    if-eqz v23, :cond_21

    .line 560
    .line 561
    :goto_e
    move/from16 v23, v6

    .line 562
    .line 563
    :goto_f
    move/from16 v24, v9

    .line 564
    .line 565
    goto/16 :goto_10

    .line 566
    .line 567
    :cond_21
    if-ge v14, v6, :cond_22

    .line 568
    .line 569
    move/from16 v23, v6

    .line 570
    .line 571
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    if-eqz v6, :cond_23

    .line 578
    .line 579
    add-int/lit8 v14, v14, 0x1

    .line 580
    .line 581
    goto :goto_f

    .line 582
    :cond_22
    move/from16 v23, v6

    .line 583
    .line 584
    :cond_23
    iget-boolean v6, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->k:Z

    .line 585
    .line 586
    if-eqz v6, :cond_24

    .line 587
    .line 588
    if-nez v20, :cond_24

    .line 589
    .line 590
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    if-eqz v6, :cond_24

    .line 597
    .line 598
    move/from16 v20, v16

    .line 599
    .line 600
    :cond_24
    new-instance v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 601
    .line 602
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 603
    .line 604
    .line 605
    move/from16 v24, v9

    .line 606
    .line 607
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    iput-object v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 612
    .line 613
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    iput-object v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 618
    .line 619
    iput-object v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 620
    .line 621
    iput-object v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 622
    .line 623
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 624
    .line 625
    .line 626
    move-result-wide v9

    .line 627
    iput-wide v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 628
    .line 629
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 630
    .line 631
    .line 632
    move-result-wide v9

    .line 633
    long-to-int v4, v9

    .line 634
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 635
    .line 636
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 637
    .line 638
    .line 639
    move-result-wide v9

    .line 640
    long-to-int v4, v9

    .line 641
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 642
    .line 643
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 648
    .line 649
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 650
    .line 651
    .line 652
    move-result-wide v9

    .line 653
    iput-wide v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 654
    .line 655
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 656
    .line 657
    .line 658
    move-result-wide v9

    .line 659
    iput-wide v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 660
    .line 661
    const/4 v4, 0x0

    .line 662
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 663
    .line 664
    const v4, -0x70708

    .line 665
    .line 666
    .line 667
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 668
    .line 669
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_black_24:I

    .line 670
    .line 671
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 672
    .line 673
    sget v4, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 674
    .line 675
    const/4 v9, 0x4

    .line 676
    if-ne v4, v9, :cond_25

    .line 677
    .line 678
    iget-object v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 679
    .line 680
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->X0(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    iput-object v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 685
    .line 686
    :cond_25
    invoke-static {v6}, Lcom/mycompany/app/list/ListTaskCmp;->s(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 687
    .line 688
    .line 689
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 690
    .line 691
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    :goto_10
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 695
    .line 696
    if-nez v4, :cond_27

    .line 697
    .line 698
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 699
    .line 700
    .line 701
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 702
    if-nez v4, :cond_26

    .line 703
    .line 704
    goto :goto_11

    .line 705
    :cond_26
    move/from16 v10, v22

    .line 706
    .line 707
    move/from16 v6, v23

    .line 708
    .line 709
    move/from16 v9, v24

    .line 710
    .line 711
    goto/16 :goto_d

    .line 712
    .line 713
    :catch_1
    :cond_27
    :goto_11
    move/from16 v14, v20

    .line 714
    .line 715
    goto :goto_12

    .line 716
    :catch_2
    :cond_28
    move-object/from16 v21, v4

    .line 717
    .line 718
    move/from16 v19, v6

    .line 719
    .line 720
    goto :goto_12

    .line 721
    :catch_3
    move-object/from16 v21, v4

    .line 722
    .line 723
    move/from16 v19, v6

    .line 724
    .line 725
    const/4 v3, 0x0

    .line 726
    :goto_12
    if-eqz v3, :cond_29

    .line 727
    .line 728
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 729
    .line 730
    .line 731
    :cond_29
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 732
    .line 733
    if-eqz v1, :cond_2a

    .line 734
    .line 735
    goto/16 :goto_1f

    .line 736
    .line 737
    :cond_2a
    :goto_13
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->k:Z

    .line 738
    .line 739
    if-eqz v1, :cond_2b

    .line 740
    .line 741
    if-nez v14, :cond_2b

    .line 742
    .line 743
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 744
    .line 745
    const/4 v3, 0x0

    .line 746
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    if-eqz v1, :cond_2b

    .line 751
    .line 752
    invoke-static {v2, v1}, Lcom/mycompany/app/db/DbCmp;->d(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 753
    .line 754
    .line 755
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 756
    .line 757
    invoke-static {v1}, Lcom/mycompany/app/list/ListTaskCmp;->r(Lcom/mycompany/app/main/MainUri$UriItem;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    :cond_2b
    new-instance v1, Ljava/util/ArrayList;

    .line 765
    .line 766
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .line 768
    .line 769
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 770
    .line 771
    new-instance v1, Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .line 775
    .line 776
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 777
    .line 778
    if-nez v18, :cond_2c

    .line 779
    .line 780
    sget v1, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 781
    .line 782
    if-eqz v1, :cond_2c

    .line 783
    .line 784
    move/from16 v1, v16

    .line 785
    .line 786
    goto :goto_14

    .line 787
    :cond_2c
    const/4 v1, 0x0

    .line 788
    :goto_14
    if-eqz v1, :cond_2d

    .line 789
    .line 790
    new-instance v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 791
    .line 792
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 793
    .line 794
    .line 795
    const/4 v4, 0x0

    .line 796
    iput v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 797
    .line 798
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    :cond_2d
    if-eqz v19, :cond_32

    .line 804
    .line 805
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-nez v3, :cond_32

    .line 812
    .line 813
    new-instance v3, Ljava/util/ArrayList;

    .line 814
    .line 815
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .line 817
    .line 818
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 819
    .line 820
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    const/4 v6, 0x0

    .line 825
    :goto_15
    if-ge v6, v5, :cond_31

    .line 826
    .line 827
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v7

    .line 831
    add-int/lit8 v6, v6, 0x1

    .line 832
    .line 833
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 834
    .line 835
    iget-boolean v8, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 836
    .line 837
    if-eqz v8, :cond_2e

    .line 838
    .line 839
    goto/16 :goto_1f

    .line 840
    .line 841
    :cond_2e
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 842
    .line 843
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 844
    .line 845
    .line 846
    move-result v8

    .line 847
    if-eqz v8, :cond_2f

    .line 848
    .line 849
    goto :goto_15

    .line 850
    :cond_2f
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 851
    .line 852
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 853
    .line 854
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v8

    .line 858
    move-object/from16 v9, v21

    .line 859
    .line 860
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 861
    .line 862
    .line 863
    move-result v8

    .line 864
    if-eqz v8, :cond_30

    .line 865
    .line 866
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    :cond_30
    move-object/from16 v21, v9

    .line 870
    .line 871
    goto :goto_15

    .line 872
    :cond_31
    iput-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 873
    .line 874
    :cond_32
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    if-nez v3, :cond_42

    .line 881
    .line 882
    if-nez v18, :cond_33

    .line 883
    .line 884
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 885
    .line 886
    sget v4, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 887
    .line 888
    sget v5, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 889
    .line 890
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 891
    .line 892
    invoke-static {v4, v5, v6}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    :try_start_4
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 897
    .line 898
    .line 899
    :catch_4
    :cond_33
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->t:Z

    .line 900
    .line 901
    if-eqz v3, :cond_34

    .line 902
    .line 903
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 904
    .line 905
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 906
    .line 907
    .line 908
    move-result v3

    .line 909
    new-array v4, v3, [Z

    .line 910
    .line 911
    iput-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->r:[Z

    .line 912
    .line 913
    move v9, v3

    .line 914
    goto :goto_16

    .line 915
    :cond_34
    const/4 v9, 0x0

    .line 916
    :goto_16
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->y:Z

    .line 917
    .line 918
    if-nez v3, :cond_36

    .line 919
    .line 920
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 921
    .line 922
    if-nez v3, :cond_35

    .line 923
    .line 924
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->k:Ljava/lang/String;

    .line 925
    .line 926
    iput-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 927
    .line 928
    :cond_35
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 929
    .line 930
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    xor-int/lit8 v3, v3, 0x1

    .line 935
    .line 936
    goto :goto_17

    .line 937
    :cond_36
    const/4 v3, 0x0

    .line 938
    :goto_17
    iget-object v10, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 939
    .line 940
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 941
    .line 942
    .line 943
    move-result v11

    .line 944
    move v12, v3

    .line 945
    const/4 v3, 0x0

    .line 946
    const/4 v4, 0x0

    .line 947
    const/4 v5, 0x0

    .line 948
    const/4 v6, 0x0

    .line 949
    const/4 v7, 0x0

    .line 950
    const/4 v8, 0x0

    .line 951
    const/4 v13, 0x0

    .line 952
    :goto_18
    if-ge v13, v11, :cond_41

    .line 953
    .line 954
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v14

    .line 958
    add-int/lit8 v13, v13, 0x1

    .line 959
    .line 960
    check-cast v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 961
    .line 962
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 963
    .line 964
    if-eqz v15, :cond_37

    .line 965
    .line 966
    goto/16 :goto_1f

    .line 967
    .line 968
    :cond_37
    if-nez v14, :cond_38

    .line 969
    .line 970
    goto :goto_18

    .line 971
    :cond_38
    iget-object v15, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 972
    .line 973
    move/from16 v18, v1

    .line 974
    .line 975
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 976
    .line 977
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    if-eqz v18, :cond_3b

    .line 981
    .line 982
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    if-nez v1, :cond_39

    .line 987
    .line 988
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 989
    .line 990
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    if-nez v1, :cond_39

    .line 995
    .line 996
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 997
    .line 998
    move-object/from16 v3, v17

    .line 999
    .line 1000
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/ListTaskCmp;->p(Lcom/mycompany/app/list/ListTaskCmp;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1001
    .line 1002
    .line 1003
    const/4 v4, 0x0

    .line 1004
    const/4 v6, 0x0

    .line 1005
    const/4 v7, 0x0

    .line 1006
    :cond_39
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1007
    .line 1008
    iget-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 1009
    .line 1010
    add-int/lit8 v6, v6, 0x1

    .line 1011
    .line 1012
    iget-object v5, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 1013
    .line 1014
    if-eqz v5, :cond_3a

    .line 1015
    .line 1016
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1017
    .line 1018
    .line 1019
    move-result v5

    .line 1020
    goto :goto_19

    .line 1021
    :cond_3a
    const/4 v5, 0x0

    .line 1022
    :goto_19
    iput v5, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1023
    .line 1024
    move-object v5, v3

    .line 1025
    move-object v3, v1

    .line 1026
    goto :goto_1a

    .line 1027
    :cond_3b
    const/4 v1, 0x0

    .line 1028
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1029
    .line 1030
    :goto_1a
    iput v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 1031
    .line 1032
    iput v8, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1033
    .line 1034
    if-eqz v12, :cond_3c

    .line 1035
    .line 1036
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1037
    .line 1038
    iget-object v15, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 1039
    .line 1040
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v1

    .line 1044
    if-eqz v1, :cond_3c

    .line 1045
    .line 1046
    iput-object v14, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1047
    .line 1048
    const/4 v12, 0x0

    .line 1049
    :cond_3c
    iget-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1050
    .line 1051
    if-eqz v1, :cond_3d

    .line 1052
    .line 1053
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->r:[Z

    .line 1054
    .line 1055
    if-eqz v1, :cond_3d

    .line 1056
    .line 1057
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1058
    .line 1059
    if-ge v15, v9, :cond_3d

    .line 1060
    .line 1061
    aput-boolean v16, v1, v15

    .line 1062
    .line 1063
    iget v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->s:I

    .line 1064
    .line 1065
    add-int/lit8 v1, v1, 0x1

    .line 1066
    .line 1067
    iput v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->s:I

    .line 1068
    .line 1069
    add-int/lit8 v7, v7, 0x1

    .line 1070
    .line 1071
    :cond_3d
    iget-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 1072
    .line 1073
    if-eqz v1, :cond_40

    .line 1074
    .line 1075
    iget v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->v:I

    .line 1076
    .line 1077
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1078
    .line 1079
    if-eq v1, v15, :cond_3f

    .line 1080
    .line 1081
    iput v15, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->v:I

    .line 1082
    .line 1083
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 1084
    .line 1085
    if-nez v1, :cond_3e

    .line 1086
    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    .line 1088
    .line 1089
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 1093
    .line 1094
    :cond_3e
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 1095
    .line 1096
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1097
    .line 1098
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v15

    .line 1102
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v1

    .line 1106
    if-nez v1, :cond_3f

    .line 1107
    .line 1108
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 1109
    .line 1110
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1111
    .line 1112
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v15

    .line 1116
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    :cond_3f
    iget v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->x:I

    .line 1120
    .line 1121
    const/4 v15, -0x1

    .line 1122
    if-ne v1, v15, :cond_40

    .line 1123
    .line 1124
    iget v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1125
    .line 1126
    iput v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->x:I

    .line 1127
    .line 1128
    :cond_40
    add-int/lit8 v4, v4, 0x1

    .line 1129
    .line 1130
    add-int/lit8 v8, v8, 0x1

    .line 1131
    .line 1132
    const/4 v1, 0x0

    .line 1133
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 1134
    .line 1135
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 1136
    .line 1137
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1138
    .line 1139
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 1140
    .line 1141
    move/from16 v1, v18

    .line 1142
    .line 1143
    goto/16 :goto_18

    .line 1144
    .line 1145
    :cond_41
    move/from16 v18, v1

    .line 1146
    .line 1147
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v1

    .line 1151
    if-nez v1, :cond_43

    .line 1152
    .line 1153
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 1154
    .line 1155
    move-object/from16 v3, v17

    .line 1156
    .line 1157
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/ListTaskCmp;->p(Lcom/mycompany/app/list/ListTaskCmp;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_1b

    .line 1161
    :cond_42
    move/from16 v18, v1

    .line 1162
    .line 1163
    :cond_43
    :goto_1b
    if-nez v18, :cond_45

    .line 1164
    .line 1165
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1166
    .line 1167
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1168
    .line 1169
    .line 1170
    const/4 v3, 0x0

    .line 1171
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 1172
    .line 1173
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 1174
    .line 1175
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1176
    .line 1177
    .line 1178
    move-result v4

    .line 1179
    iput v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 1180
    .line 1181
    iget v5, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->s:I

    .line 1182
    .line 1183
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1184
    .line 1185
    if-ne v5, v4, :cond_44

    .line 1186
    .line 1187
    move/from16 v4, v16

    .line 1188
    .line 1189
    goto :goto_1c

    .line 1190
    :cond_44
    move v4, v3

    .line 1191
    :goto_1c
    iput-boolean v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1192
    .line 1193
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 1194
    .line 1195
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    goto :goto_1d

    .line 1199
    :cond_45
    const/4 v3, 0x0

    .line 1200
    :goto_1d
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->t:Z

    .line 1201
    .line 1202
    if-eqz v1, :cond_47

    .line 1203
    .line 1204
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 1205
    .line 1206
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    if-nez v1, :cond_47

    .line 1211
    .line 1212
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1215
    .line 1216
    .line 1217
    move-result v1

    .line 1218
    new-array v4, v1, [Z

    .line 1219
    .line 1220
    iput-object v4, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->p:[Z

    .line 1221
    .line 1222
    new-array v1, v1, [I

    .line 1223
    .line 1224
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->q:[I

    .line 1225
    .line 1226
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 1227
    .line 1228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1229
    .line 1230
    .line 1231
    move-result v4

    .line 1232
    move v10, v3

    .line 1233
    :goto_1e
    if-ge v10, v4, :cond_47

    .line 1234
    .line 1235
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v3

    .line 1239
    add-int/lit8 v10, v10, 0x1

    .line 1240
    .line 1241
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1242
    .line 1243
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1244
    .line 1245
    if-eqz v5, :cond_46

    .line 1246
    .line 1247
    goto :goto_1f

    .line 1248
    :cond_46
    iget v5, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 1249
    .line 1250
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->p:[Z

    .line 1251
    .line 1252
    iget-boolean v7, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1253
    .line 1254
    aput-boolean v7, v6, v5

    .line 1255
    .line 1256
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->q:[I

    .line 1257
    .line 1258
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1259
    .line 1260
    aput v3, v6, v5

    .line 1261
    .line 1262
    goto :goto_1e

    .line 1263
    :cond_47
    invoke-static {v2}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v1

    .line 1267
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 1268
    .line 1269
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 1270
    .line 1271
    iput-object v2, v1, Lcom/mycompany/app/data/DataList;->a:Ljava/util/List;

    .line 1272
    .line 1273
    iput-object v3, v1, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 1274
    .line 1275
    :cond_48
    :goto_1f
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/list/ListTaskCmp;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskCmp;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->a()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->o:Ljava/util/List;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->p:[Z

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->q:[I

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->r:[Z

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->u:Ljava/util/List;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 50
    .line 51
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/list/ListTaskCmp;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/list/ListTaskCmp;->e:Z

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/mycompany/app/list/ListTaskCmp;->f:Z

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/list/ListTaskCmp;->g(Z)V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskCmp;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 42
    .line 43
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->p:[Z

    .line 50
    .line 51
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 52
    .line 53
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->q:[I

    .line 54
    .line 55
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->r:[Z

    .line 58
    .line 59
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 60
    .line 61
    iget v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->s:I

    .line 62
    .line 63
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 64
    .line 65
    const/4 v3, -0x1

    .line 66
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 67
    .line 68
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 69
    .line 70
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 71
    .line 72
    iget v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->x:I

    .line 73
    .line 74
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 75
    .line 76
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 77
    .line 78
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 79
    .line 80
    iget-boolean v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->t:Z

    .line 81
    .line 82
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 83
    .line 84
    iget v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->z:I

    .line 85
    .line 86
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->t:I

    .line 87
    .line 88
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->B:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->i:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->l:Ljava/util/ArrayList;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->m:Ljava/util/ArrayList;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->n:Ljava/util/ArrayList;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->o:Ljava/util/List;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->p:[Z

    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->q:[I

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->r:[Z

    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->u:Ljava/util/List;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCmp$ListTask;->w:Ljava/util/ArrayList;

    .line 116
    .line 117
    return-void
.end method
