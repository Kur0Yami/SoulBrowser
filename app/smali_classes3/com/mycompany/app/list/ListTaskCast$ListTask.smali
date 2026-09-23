.class Lcom/mycompany/app/list/ListTaskCast$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/ListTaskCast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public A:Ljava/util/HashMap;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:Z

.field public final h:Z

.field public i:Ljava/lang/String;

.field public j:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:[Z

.field public o:[I

.field public p:[Z

.field public q:I

.field public r:Z

.field public s:Ljava/util/List;

.field public t:I

.field public u:Ljava/util/ArrayList;

.field public v:I

.field public final w:Z

.field public final x:Z

.field public final y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/ListTaskCast;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->t:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->v:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/ListTaskCast;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->g:Z

    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->h:Z

    .line 28
    .line 29
    iput-object p4, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p5, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->s:Ljava/util/List;

    .line 32
    .line 33
    iget-boolean p2, p1, Lcom/mycompany/app/list/ListTaskCast;->e:Z

    .line 34
    .line 35
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->x:Z

    .line 36
    .line 37
    iget-object p2, p1, Lcom/mycompany/app/list/ListTaskCast;->f:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->y:Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean p2, p1, Lcom/mycompany/app/list/ListTaskCast;->d:Z

    .line 42
    .line 43
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->w:Z

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p1, Lcom/mycompany/app/list/ListTaskCast;->d:Z

    .line 47
    .line 48
    iget-object p1, p1, Lcom/mycompany/app/list/ListTaskCast;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "_size"

    .line 4
    .line 5
    const-string v2, "last_modified"

    .line 6
    .line 7
    const-string v3, "_display_name"

    .line 8
    .line 9
    const-string v4, "mime_type"

    .line 10
    .line 11
    const-string v5, "document_id"

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    iput-boolean v6, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->f:Z

    .line 15
    .line 16
    iget-object v7, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    goto/16 :goto_23

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    check-cast v7, Lcom/mycompany/app/list/ListTaskCast;

    .line 27
    .line 28
    if-eqz v7, :cond_4c

    .line 29
    .line 30
    iget-object v8, v7, Lcom/mycompany/app/list/ListTaskCast;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 33
    .line 34
    if-eqz v9, :cond_1

    .line 35
    .line 36
    goto/16 :goto_23

    .line 37
    .line 38
    :cond_1
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->y:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v10, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->x:Z

    .line 41
    .line 42
    if-eqz v10, :cond_2

    .line 43
    .line 44
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    xor-int/2addr v7, v6

    .line 49
    :goto_0
    const/4 v13, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v7, v7, Lcom/mycompany/app/list/ListTaskCast;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v7}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    iget-boolean v13, v7, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 62
    .line 63
    if-eqz v13, :cond_3

    .line 64
    .line 65
    iput-boolean v6, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->r:Z

    .line 66
    .line 67
    invoke-virtual {v7}, Lcom/mycompany/app/main/MainListAdapter;->k()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    move-object v13, v7

    .line 72
    const/4 v7, 0x0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v7, 0x0

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v14, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v14, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v14, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 89
    .line 90
    if-eqz v10, :cond_5

    .line 91
    .line 92
    if-eqz v7, :cond_4

    .line 93
    .line 94
    invoke-static {v8}, Lcom/mycompany/app/data/DataSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataSearch;

    .line 95
    .line 96
    .line 97
    move-result-object v14

    .line 98
    iget-object v14, v14, Lcom/mycompany/app/data/DataSearch;->a:Ljava/util/List;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    const/4 v14, 0x0

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-static {v8}, Lcom/mycompany/app/data/DataCast;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    iget-object v14, v14, Lcom/mycompany/app/data/DataList;->a:Ljava/util/List;

    .line 108
    .line 109
    :goto_2
    if-eqz v14, :cond_f

    .line 110
    .line 111
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-nez v15, :cond_f

    .line 116
    .line 117
    new-instance v15, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .line 121
    .line 122
    if-eqz v13, :cond_6

    .line 123
    .line 124
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    const/4 v14, 0x0

    .line 130
    :goto_3
    iget-object v11, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->s:Ljava/util/List;

    .line 131
    .line 132
    if-eqz v11, :cond_7

    .line 133
    .line 134
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    goto :goto_4

    .line 139
    :cond_7
    const/4 v11, 0x0

    .line 140
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    move/from16 v17, v7

    .line 145
    .line 146
    move/from16 v18, v10

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    :goto_5
    if-ge v10, v6, :cond_10

    .line 152
    .line 153
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v19

    .line 157
    add-int/lit8 v10, v10, 0x1

    .line 158
    .line 159
    move/from16 v20, v6

    .line 160
    .line 161
    move-object/from16 v6, v19

    .line 162
    .line 163
    check-cast v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 164
    .line 165
    move/from16 v19, v10

    .line 166
    .line 167
    iget-boolean v10, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 168
    .line 169
    if-eqz v10, :cond_8

    .line 170
    .line 171
    goto/16 :goto_23

    .line 172
    .line 173
    :cond_8
    iget-boolean v10, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->h:Z

    .line 174
    .line 175
    if-eqz v10, :cond_9

    .line 176
    .line 177
    iget-object v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v8, v10}, Lcom/mycompany/app/main/MainUri;->r(Landroid/content/Context;Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-nez v10, :cond_9

    .line 184
    .line 185
    :goto_6
    move/from16 v10, v19

    .line 186
    .line 187
    move/from16 v6, v20

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    if-ge v12, v14, :cond_a

    .line 191
    .line 192
    iget-object v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    iput-boolean v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 199
    .line 200
    if-eqz v10, :cond_b

    .line 201
    .line 202
    add-int/lit8 v12, v12, 0x1

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_a
    const/4 v10, 0x0

    .line 206
    iput-boolean v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 207
    .line 208
    :cond_b
    :goto_7
    if-ge v7, v11, :cond_c

    .line 209
    .line 210
    iget-object v10, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->s:Ljava/util/List;

    .line 211
    .line 212
    move/from16 v21, v7

    .line 213
    .line 214
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 215
    .line 216
    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    iput-boolean v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 221
    .line 222
    if-eqz v7, :cond_d

    .line 223
    .line 224
    add-int/lit8 v7, v21, 0x1

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_c
    move/from16 v21, v7

    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    iput-boolean v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 231
    .line 232
    :cond_d
    move/from16 v7, v21

    .line 233
    .line 234
    :goto_8
    if-nez v18, :cond_e

    .line 235
    .line 236
    invoke-static {v6}, Lcom/mycompany/app/list/ListTaskCast;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 237
    .line 238
    .line 239
    :cond_e
    iget-object v10, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    iget-object v10, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 245
    .line 246
    iget-object v6, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_f
    move/from16 v17, v7

    .line 253
    .line 254
    move/from16 v18, v10

    .line 255
    .line 256
    :cond_10
    iget-boolean v6, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 257
    .line 258
    if-eqz v6, :cond_11

    .line 259
    .line 260
    goto/16 :goto_23

    .line 261
    .line 262
    :cond_11
    sget v6, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 263
    .line 264
    if-nez v18, :cond_35

    .line 265
    .line 266
    iget-boolean v7, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->g:Z

    .line 267
    .line 268
    if-nez v7, :cond_12

    .line 269
    .line 270
    iget-object v10, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    if-eqz v10, :cond_35

    .line 277
    .line 278
    :cond_12
    const/4 v10, 0x6

    .line 279
    const/4 v11, 0x4

    .line 280
    if-ne v6, v11, :cond_13

    .line 281
    .line 282
    sget-object v12, Lcom/mycompany/app/pref/PrefPath;->w:Ljava/lang/String;

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_13
    if-ne v6, v10, :cond_14

    .line 286
    .line 287
    sget-object v12, Lcom/mycompany/app/pref/PrefPath;->y:Ljava/lang/String;

    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_14
    sget-object v12, Lcom/mycompany/app/pref/PrefPath;->x:Ljava/lang/String;

    .line 291
    .line 292
    const/4 v13, 0x1

    .line 293
    iput-boolean v13, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->z:Z

    .line 294
    .line 295
    :goto_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-eqz v13, :cond_15

    .line 300
    .line 301
    goto/16 :goto_23

    .line 302
    .line 303
    :cond_15
    :try_start_0
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    invoke-static {v12}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-static {v12, v13}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 312
    .line 313
    .line 314
    move-result-object v20

    .line 315
    filled-new-array {v5, v4, v3, v2, v1}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v21

    .line 319
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 320
    .line 321
    .line 322
    move-result-object v19

    .line 323
    const/16 v23, 0x0

    .line 324
    .line 325
    const/16 v24, 0x0

    .line 326
    .line 327
    const/16 v22, 0x0

    .line 328
    .line 329
    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 330
    .line 331
    .line 332
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    if-eqz v13, :cond_33

    .line 334
    .line 335
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 336
    .line 337
    .line 338
    move-result v14

    .line 339
    if-eqz v14, :cond_33

    .line 340
    .line 341
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v7, :cond_16

    .line 362
    .line 363
    iget-object v7, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    goto :goto_a

    .line 370
    :cond_16
    const/4 v7, 0x0

    .line 371
    :goto_a
    const/4 v14, 0x0

    .line 372
    :goto_b
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 373
    .line 374
    if-eqz v15, :cond_17

    .line 375
    .line 376
    goto/16 :goto_23

    .line 377
    .line 378
    :cond_17
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v15

    .line 382
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v19

    .line 386
    if-eqz v19, :cond_18

    .line 387
    .line 388
    move/from16 v19, v1

    .line 389
    .line 390
    move/from16 v23, v3

    .line 391
    .line 392
    move v15, v4

    .line 393
    move v3, v11

    .line 394
    goto/16 :goto_19

    .line 395
    .line 396
    :cond_18
    const-wide/16 v19, 0x0

    .line 397
    .line 398
    if-ne v6, v11, :cond_1c

    .line 399
    .line 400
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v22

    .line 408
    if-eqz v22, :cond_19

    .line 409
    .line 410
    :goto_c
    const/4 v10, 0x0

    .line 411
    goto :goto_d

    .line 412
    :cond_19
    const-string v10, "image/svg+xml"

    .line 413
    .line 414
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    if-eqz v10, :cond_1a

    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_1a
    const-string v10, "image"

    .line 422
    .line 423
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    :goto_d
    if-nez v10, :cond_1b

    .line 428
    .line 429
    :goto_e
    move/from16 v19, v1

    .line 430
    .line 431
    move/from16 v23, v3

    .line 432
    .line 433
    goto/16 :goto_17

    .line 434
    .line 435
    :cond_1b
    move/from16 v23, v3

    .line 436
    .line 437
    goto/16 :goto_16

    .line 438
    .line 439
    :cond_1c
    if-ne v6, v10, :cond_20

    .line 440
    .line 441
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v11

    .line 449
    if-eqz v11, :cond_1e

    .line 450
    .line 451
    :cond_1d
    const/4 v10, 0x0

    .line 452
    goto :goto_f

    .line 453
    :cond_1e
    const-string v11, "audio"

    .line 454
    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v11

    .line 459
    if-nez v11, :cond_1f

    .line 460
    .line 461
    const-string v11, "application/ogg"

    .line 462
    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-nez v11, :cond_1f

    .line 468
    .line 469
    const-string v11, "application/x-ogg"

    .line 470
    .line 471
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v10

    .line 475
    if-eqz v10, :cond_1d

    .line 476
    .line 477
    :cond_1f
    const/4 v10, 0x1

    .line 478
    :goto_f
    if-nez v10, :cond_1b

    .line 479
    .line 480
    goto :goto_e

    .line 481
    :cond_20
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v11

    .line 489
    if-eqz v11, :cond_21

    .line 490
    .line 491
    const/4 v10, 0x0

    .line 492
    goto :goto_10

    .line 493
    :cond_21
    const-string v11, "video"

    .line 494
    .line 495
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    :goto_10
    if-nez v10, :cond_1b

    .line 500
    .line 501
    invoke-static {v15}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v10

    .line 505
    const-string v11, "vtt"

    .line 506
    .line 507
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v11

    .line 511
    if-nez v11, :cond_23

    .line 512
    .line 513
    move/from16 v23, v3

    .line 514
    .line 515
    const-string v3, "srt"

    .line 516
    .line 517
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_22

    .line 522
    .line 523
    goto :goto_12

    .line 524
    :cond_22
    :goto_11
    move/from16 v19, v1

    .line 525
    .line 526
    goto/16 :goto_17

    .line 527
    .line 528
    :cond_23
    move/from16 v23, v3

    .line 529
    .line 530
    :goto_12
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 531
    .line 532
    .line 533
    move-result-wide v24

    .line 534
    cmp-long v3, v24, v19

    .line 535
    .line 536
    if-nez v3, :cond_24

    .line 537
    .line 538
    :goto_13
    goto :goto_11

    .line 539
    :cond_24
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-static {v12, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    if-nez v3, :cond_25

    .line 548
    .line 549
    goto :goto_13

    .line 550
    :cond_25
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 555
    .line 556
    .line 557
    move-result v10

    .line 558
    if-eqz v10, :cond_26

    .line 559
    .line 560
    goto :goto_11

    .line 561
    :cond_26
    invoke-static {v15}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v10

    .line 565
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v15

    .line 569
    if-eqz v15, :cond_27

    .line 570
    .line 571
    goto :goto_13

    .line 572
    :cond_27
    iget-object v15, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->A:Ljava/util/HashMap;

    .line 573
    .line 574
    if-nez v15, :cond_28

    .line 575
    .line 576
    new-instance v15, Ljava/util/HashMap;

    .line 577
    .line 578
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 579
    .line 580
    .line 581
    iput-object v15, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->A:Ljava/util/HashMap;

    .line 582
    .line 583
    const/4 v15, 0x0

    .line 584
    goto :goto_14

    .line 585
    :cond_28
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v15

    .line 589
    check-cast v15, Ljava/util/List;

    .line 590
    .line 591
    :goto_14
    if-nez v15, :cond_29

    .line 592
    .line 593
    new-instance v15, Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    goto :goto_15

    .line 602
    :cond_29
    if-eqz v11, :cond_2a

    .line 603
    .line 604
    const/4 v11, 0x0

    .line 605
    invoke-interface {v15, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    goto :goto_15

    .line 609
    :cond_2a
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    :goto_15
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->A:Ljava/util/HashMap;

    .line 613
    .line 614
    invoke-virtual {v3, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    goto :goto_11

    .line 618
    :goto_16
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 619
    .line 620
    .line 621
    move-result-wide v10

    .line 622
    cmp-long v3, v10, v19

    .line 623
    .line 624
    if-nez v3, :cond_2b

    .line 625
    .line 626
    goto :goto_13

    .line 627
    :cond_2b
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-static {v12, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    if-nez v3, :cond_2c

    .line 636
    .line 637
    goto :goto_11

    .line 638
    :cond_2c
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 643
    .line 644
    .line 645
    move-result v19

    .line 646
    if-eqz v19, :cond_2d

    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_2d
    if-ge v14, v7, :cond_2e

    .line 650
    .line 651
    move/from16 v19, v1

    .line 652
    .line 653
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-eqz v1, :cond_2f

    .line 660
    .line 661
    add-int/lit8 v14, v14, 0x1

    .line 662
    .line 663
    :goto_17
    move v15, v4

    .line 664
    const/4 v3, 0x4

    .line 665
    const/4 v10, 0x6

    .line 666
    goto :goto_19

    .line 667
    :cond_2e
    move/from16 v19, v1

    .line 668
    .line 669
    :cond_2f
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 670
    .line 671
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 672
    .line 673
    .line 674
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 675
    .line 676
    iput-object v15, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 677
    .line 678
    move v15, v4

    .line 679
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 680
    .line 681
    .line 682
    move-result-wide v3

    .line 683
    iput-wide v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 684
    .line 685
    iput-wide v10, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 686
    .line 687
    iput v6, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 688
    .line 689
    const v3, -0x70708

    .line 690
    .line 691
    .line 692
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 693
    .line 694
    const/4 v3, 0x4

    .line 695
    if-ne v6, v3, :cond_30

    .line 696
    .line 697
    const/4 v4, 0x1

    .line 698
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 699
    .line 700
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 701
    .line 702
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 703
    .line 704
    const/4 v10, 0x6

    .line 705
    goto :goto_18

    .line 706
    :cond_30
    const/4 v10, 0x6

    .line 707
    if-ne v6, v10, :cond_31

    .line 708
    .line 709
    const/4 v4, 0x3

    .line 710
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 711
    .line 712
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_black_24:I

    .line 713
    .line 714
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 715
    .line 716
    iget-object v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 717
    .line 718
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    iput-object v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 723
    .line 724
    goto :goto_18

    .line 725
    :cond_31
    const/4 v4, 0x2

    .line 726
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 727
    .line 728
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 729
    .line 730
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 731
    .line 732
    iget-object v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 733
    .line 734
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v4

    .line 738
    iput-object v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 739
    .line 740
    :goto_18
    invoke-static {v1}, Lcom/mycompany/app/list/ListTaskCast;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 741
    .line 742
    .line 743
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 744
    .line 745
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    :goto_19
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 749
    .line 750
    .line 751
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 752
    if-nez v1, :cond_32

    .line 753
    .line 754
    goto :goto_1a

    .line 755
    :cond_32
    move v11, v3

    .line 756
    move v4, v15

    .line 757
    move/from16 v1, v19

    .line 758
    .line 759
    move/from16 v3, v23

    .line 760
    .line 761
    goto/16 :goto_b

    .line 762
    .line 763
    :catch_0
    const/4 v13, 0x0

    .line 764
    :catch_1
    :cond_33
    :goto_1a
    if-eqz v13, :cond_34

    .line 765
    .line 766
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 767
    .line 768
    .line 769
    :cond_34
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 770
    .line 771
    if-eqz v1, :cond_35

    .line 772
    .line 773
    goto/16 :goto_23

    .line 774
    .line 775
    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    .line 776
    .line 777
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .line 779
    .line 780
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 781
    .line 782
    new-instance v1, Ljava/util/ArrayList;

    .line 783
    .line 784
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .line 786
    .line 787
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 788
    .line 789
    if-eqz v17, :cond_3a

    .line 790
    .line 791
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-nez v1, :cond_3a

    .line 798
    .line 799
    new-instance v1, Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .line 803
    .line 804
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 805
    .line 806
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 807
    .line 808
    .line 809
    move-result v3

    .line 810
    const/4 v4, 0x0

    .line 811
    :cond_36
    :goto_1b
    if-ge v4, v3, :cond_39

    .line 812
    .line 813
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    add-int/lit8 v4, v4, 0x1

    .line 818
    .line 819
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 820
    .line 821
    iget-boolean v6, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 822
    .line 823
    if-eqz v6, :cond_37

    .line 824
    .line 825
    goto/16 :goto_23

    .line 826
    .line 827
    :cond_37
    iget-object v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 828
    .line 829
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    if-eqz v6, :cond_38

    .line 834
    .line 835
    goto :goto_1b

    .line 836
    :cond_38
    iget-object v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 837
    .line 838
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 839
    .line 840
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v6

    .line 844
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 845
    .line 846
    .line 847
    move-result v6

    .line 848
    if-eqz v6, :cond_36

    .line 849
    .line 850
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    goto :goto_1b

    .line 854
    :cond_39
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 855
    .line 856
    :cond_3a
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    if-nez v1, :cond_48

    .line 863
    .line 864
    if-nez v18, :cond_3b

    .line 865
    .line 866
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 867
    .line 868
    sget v2, Lcom/mycompany/app/pref/PrefList;->s:I

    .line 869
    .line 870
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->t:Z

    .line 871
    .line 872
    const/4 v10, 0x0

    .line 873
    invoke-static {v10, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    :try_start_2
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 878
    .line 879
    .line 880
    :catch_2
    :cond_3b
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->r:Z

    .line 881
    .line 882
    if-eqz v1, :cond_3c

    .line 883
    .line 884
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 885
    .line 886
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 887
    .line 888
    .line 889
    move-result v1

    .line 890
    new-array v2, v1, [Z

    .line 891
    .line 892
    iput-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->p:[Z

    .line 893
    .line 894
    move v10, v1

    .line 895
    goto :goto_1c

    .line 896
    :cond_3c
    const/4 v10, 0x0

    .line 897
    :goto_1c
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->w:Z

    .line 898
    .line 899
    if-nez v1, :cond_3d

    .line 900
    .line 901
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->i:Ljava/lang/String;

    .line 902
    .line 903
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    const/16 v16, 0x1

    .line 908
    .line 909
    xor-int/lit8 v1, v1, 0x1

    .line 910
    .line 911
    goto :goto_1d

    .line 912
    :cond_3d
    const/4 v1, 0x0

    .line 913
    :goto_1d
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 914
    .line 915
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    move v5, v1

    .line 920
    const/4 v1, 0x0

    .line 921
    const/4 v4, 0x0

    .line 922
    const/4 v6, 0x0

    .line 923
    :goto_1e
    if-ge v6, v3, :cond_48

    .line 924
    .line 925
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v7

    .line 929
    add-int/lit8 v6, v6, 0x1

    .line 930
    .line 931
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 932
    .line 933
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 934
    .line 935
    if-eqz v9, :cond_3e

    .line 936
    .line 937
    goto/16 :goto_23

    .line 938
    .line 939
    :cond_3e
    if-nez v7, :cond_3f

    .line 940
    .line 941
    goto :goto_1e

    .line 942
    :cond_3f
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 943
    .line 944
    iget-object v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 945
    .line 946
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    .line 948
    .line 949
    const/4 v11, 0x0

    .line 950
    iput v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 951
    .line 952
    iput v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 953
    .line 954
    iput v4, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 955
    .line 956
    iget-boolean v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->z:Z

    .line 957
    .line 958
    if-eqz v9, :cond_42

    .line 959
    .line 960
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->A:Ljava/util/HashMap;

    .line 961
    .line 962
    if-eqz v9, :cond_41

    .line 963
    .line 964
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 965
    .line 966
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v9

    .line 970
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 971
    .line 972
    .line 973
    move-result v11

    .line 974
    if-nez v11, :cond_40

    .line 975
    .line 976
    iget-object v11, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->A:Ljava/util/HashMap;

    .line 977
    .line 978
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v9

    .line 982
    check-cast v9, Ljava/util/List;

    .line 983
    .line 984
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->R:Ljava/util/List;

    .line 985
    .line 986
    const/4 v9, 0x0

    .line 987
    goto :goto_1f

    .line 988
    :cond_40
    const/4 v9, 0x0

    .line 989
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->R:Ljava/util/List;

    .line 990
    .line 991
    goto :goto_1f

    .line 992
    :cond_41
    const/4 v9, 0x0

    .line 993
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->R:Ljava/util/List;

    .line 994
    .line 995
    :cond_42
    :goto_1f
    if-eqz v5, :cond_43

    .line 996
    .line 997
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 998
    .line 999
    iget-object v11, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->i:Ljava/lang/String;

    .line 1000
    .line 1001
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v9

    .line 1005
    if-eqz v9, :cond_43

    .line 1006
    .line 1007
    iput-object v7, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1008
    .line 1009
    const/4 v5, 0x0

    .line 1010
    :cond_43
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1011
    .line 1012
    if-eqz v9, :cond_44

    .line 1013
    .line 1014
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->p:[Z

    .line 1015
    .line 1016
    if-eqz v9, :cond_44

    .line 1017
    .line 1018
    iget v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1019
    .line 1020
    if-ge v11, v10, :cond_44

    .line 1021
    .line 1022
    const/16 v16, 0x1

    .line 1023
    .line 1024
    aput-boolean v16, v9, v11

    .line 1025
    .line 1026
    iget v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->q:I

    .line 1027
    .line 1028
    add-int/lit8 v9, v9, 0x1

    .line 1029
    .line 1030
    iput v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->q:I

    .line 1031
    .line 1032
    goto :goto_20

    .line 1033
    :cond_44
    const/16 v16, 0x1

    .line 1034
    .line 1035
    :goto_20
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 1036
    .line 1037
    if-eqz v9, :cond_47

    .line 1038
    .line 1039
    iget v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->t:I

    .line 1040
    .line 1041
    iget v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1042
    .line 1043
    if-eq v9, v11, :cond_46

    .line 1044
    .line 1045
    iput v11, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->t:I

    .line 1046
    .line 1047
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 1048
    .line 1049
    if-nez v9, :cond_45

    .line 1050
    .line 1051
    new-instance v9, Ljava/util/ArrayList;

    .line 1052
    .line 1053
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .line 1055
    .line 1056
    iput-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 1057
    .line 1058
    :cond_45
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 1059
    .line 1060
    iget v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1061
    .line 1062
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v11

    .line 1066
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v9

    .line 1070
    if-nez v9, :cond_46

    .line 1071
    .line 1072
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 1073
    .line 1074
    iget v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1075
    .line 1076
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v11

    .line 1080
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    .line 1082
    .line 1083
    :cond_46
    iget v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->v:I

    .line 1084
    .line 1085
    const/4 v11, -0x1

    .line 1086
    if-ne v9, v11, :cond_47

    .line 1087
    .line 1088
    iget v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1089
    .line 1090
    iput v9, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->v:I

    .line 1091
    .line 1092
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 1093
    .line 1094
    add-int/lit8 v4, v4, 0x1

    .line 1095
    .line 1096
    const/4 v9, 0x0

    .line 1097
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 1098
    .line 1099
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 1100
    .line 1101
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1102
    .line 1103
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 1104
    .line 1105
    goto/16 :goto_1e

    .line 1106
    .line 1107
    :cond_48
    const/16 v16, 0x1

    .line 1108
    .line 1109
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1110
    .line 1111
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    const/4 v10, 0x0

    .line 1115
    iput v10, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 1116
    .line 1117
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 1118
    .line 1119
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1120
    .line 1121
    .line 1122
    move-result v2

    .line 1123
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 1124
    .line 1125
    iget v3, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->q:I

    .line 1126
    .line 1127
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1128
    .line 1129
    if-ne v3, v2, :cond_49

    .line 1130
    .line 1131
    move/from16 v6, v16

    .line 1132
    .line 1133
    goto :goto_21

    .line 1134
    :cond_49
    move v6, v10

    .line 1135
    :goto_21
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1136
    .line 1137
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 1138
    .line 1139
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->r:Z

    .line 1143
    .line 1144
    if-eqz v1, :cond_4b

    .line 1145
    .line 1146
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 1147
    .line 1148
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1149
    .line 1150
    .line 1151
    move-result v1

    .line 1152
    if-nez v1, :cond_4b

    .line 1153
    .line 1154
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 1155
    .line 1156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    new-array v2, v1, [Z

    .line 1161
    .line 1162
    iput-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->n:[Z

    .line 1163
    .line 1164
    new-array v1, v1, [I

    .line 1165
    .line 1166
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->o:[I

    .line 1167
    .line 1168
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 1169
    .line 1170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1171
    .line 1172
    .line 1173
    move-result v2

    .line 1174
    move v12, v10

    .line 1175
    :goto_22
    if-ge v12, v2, :cond_4b

    .line 1176
    .line 1177
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v3

    .line 1181
    add-int/lit8 v12, v12, 0x1

    .line 1182
    .line 1183
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1184
    .line 1185
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1186
    .line 1187
    if-eqz v4, :cond_4a

    .line 1188
    .line 1189
    goto :goto_23

    .line 1190
    :cond_4a
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 1191
    .line 1192
    iget-object v5, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->n:[Z

    .line 1193
    .line 1194
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1195
    .line 1196
    aput-boolean v6, v5, v4

    .line 1197
    .line 1198
    iget-object v5, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->o:[I

    .line 1199
    .line 1200
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1201
    .line 1202
    aput v3, v5, v4

    .line 1203
    .line 1204
    goto :goto_22

    .line 1205
    :cond_4b
    invoke-static {v8}, Lcom/mycompany/app/data/DataCast;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 1210
    .line 1211
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 1212
    .line 1213
    iput-object v2, v1, Lcom/mycompany/app/data/DataList;->a:Ljava/util/List;

    .line 1214
    .line 1215
    iput-object v3, v1, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 1216
    .line 1217
    :cond_4c
    :goto_23
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/ListTaskCast;

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
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskCast;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->s:Ljava/util/List;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 48
    .line 49
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/ListTaskCast;

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
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskCast;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    new-instance v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->q:I

    .line 53
    .line 54
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 58
    .line 59
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->v:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->y:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->i:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->s:Ljava/util/List;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskCast$ListTask;->u:Ljava/util/ArrayList;

    .line 101
    .line 102
    return-void
.end method
