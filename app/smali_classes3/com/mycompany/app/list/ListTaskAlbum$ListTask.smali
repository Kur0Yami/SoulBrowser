.class Lcom/mycompany/app/list/ListTaskAlbum$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/ListTaskAlbum;
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
.method public constructor <init>(Lcom/mycompany/app/list/ListTaskAlbum;ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->v:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->x:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/ListTaskAlbum;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->g:Z

    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->h:Z

    .line 28
    .line 29
    iput-object p4, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean p5, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->k:Z

    .line 32
    .line 33
    iput-object p6, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->o:Ljava/util/List;

    .line 34
    .line 35
    iput-object p7, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->u:Ljava/util/List;

    .line 36
    .line 37
    iget-boolean p2, p1, Lcom/mycompany/app/list/ListTaskAlbum;->i:Z

    .line 38
    .line 39
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->A:Z

    .line 40
    .line 41
    iget-object p2, p1, Lcom/mycompany/app/list/ListTaskAlbum;->j:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->B:Ljava/lang/String;

    .line 44
    .line 45
    iget-boolean p2, p1, Lcom/mycompany/app/list/ListTaskAlbum;->g:Z

    .line 46
    .line 47
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->y:Z

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p1, Lcom/mycompany/app/list/ListTaskAlbum;->g:Z

    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/list/ListTaskAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v3, Lcom/mycompany/app/list/ListTaskAlbum;

    .line 18
    .line 19
    if-eqz v3, :cond_47

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/ListTaskAlbum;->a:Landroid/content/Context;

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
    iget-boolean v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->k:Z

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->k:Z

    .line 41
    .line 42
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->B:Ljava/lang/String;

    .line 43
    .line 44
    iget-boolean v5, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->A:Z

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
    iget-object v6, v3, Lcom/mycompany/app/list/ListTaskAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->t:Z

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
    iput-object v8, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v8, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

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
    invoke-static {v2}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

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
    iget-object v12, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->u:Ljava/util/List;

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
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->h:Z

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
    invoke-static {v2, v3}, Lcom/mycompany/app/db/DbAlbum;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object/from16 v3, v17

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->k:Z

    .line 195
    .line 196
    if-eqz v3, :cond_b

    .line 197
    .line 198
    if-nez v14, :cond_b

    .line 199
    .line 200
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->u:Ljava/util/List;

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
    invoke-static {v10}, Lcom/mycompany/app/list/ListTaskAlbum;->s(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 258
    .line 259
    .line 260
    :cond_11
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

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
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->o:Ljava/util/List;

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
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->o:Ljava/util/List;

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
    invoke-static {v9}, Lcom/mycompany/app/compress/Compress;->v(Ljava/lang/String;)Z

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
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

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
    invoke-static {v8}, Lcom/mycompany/app/list/ListTaskAlbum;->r(Lcom/mycompany/app/main/MainUri$UriItem;)Lcom/mycompany/app/main/MainItem$ChildItem;

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
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

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
    iget v8, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->z:I

    .line 385
    .line 386
    add-int/lit8 v8, v8, 0x1

    .line 387
    .line 388
    iput v8, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->z:I

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_1a
    if-eqz v5, :cond_1b

    .line 392
    .line 393
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

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
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->g:Z

    .line 407
    .line 408
    if-nez v1, :cond_1e

    .line 409
    .line 410
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

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
    move/from16 v20, v6

    .line 422
    .line 423
    move/from16 v19, v14

    .line 424
    .line 425
    goto/16 :goto_13

    .line 426
    .line 427
    :cond_1e
    :goto_b
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/DbAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/DbAlbum;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    const-string v8, "DbAlbum_table"

    .line 436
    .line 437
    const/4 v11, 0x0

    .line 438
    const/4 v12, 0x0

    .line 439
    const/4 v9, 0x0

    .line 440
    const/4 v10, 0x0

    .line 441
    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 442
    .line 443
    .line 444
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 445
    if-eqz v3, :cond_27

    .line 446
    .line 447
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_27

    .line 452
    .line 453
    const-string v5, "_id"

    .line 454
    .line 455
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    const-string v7, "_dir"

    .line 460
    .line 461
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    const-string v8, "_dname"

    .line 466
    .line 467
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    const-string v9, "_path"

    .line 472
    .line 473
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    const-string v10, "_name"

    .line 478
    .line 479
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    const-string v11, "_time"

    .line 484
    .line 485
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    move-result v11

    .line 489
    const-string v12, "_size"

    .line 490
    .line 491
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v12

    .line 495
    const-string v13, "_icon"

    .line 496
    .line 497
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    const-string v15, "_count"

    .line 502
    .line 503
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result v15

    .line 507
    move/from16 v19, v1

    .line 508
    .line 509
    const-string v1, "_index"

    .line 510
    .line 511
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 515
    move/from16 v20, v6

    .line 516
    .line 517
    :try_start_2
    const-string v6, "_page"

    .line 518
    .line 519
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 523
    if-eqz v19, :cond_1f

    .line 524
    .line 525
    move/from16 v19, v14

    .line 526
    .line 527
    :try_start_3
    iget-object v14, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 530
    .line 531
    .line 532
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 533
    goto :goto_c

    .line 534
    :catch_0
    move-object/from16 v21, v4

    .line 535
    .line 536
    goto/16 :goto_10

    .line 537
    .line 538
    :cond_1f
    move/from16 v19, v14

    .line 539
    .line 540
    const/4 v14, 0x0

    .line 541
    :goto_c
    move-object/from16 v21, v4

    .line 542
    .line 543
    const/4 v4, 0x0

    .line 544
    :goto_d
    :try_start_4
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v22

    .line 548
    invoke-static/range {v22 .. v22}, Lcom/mycompany/app/compress/Compress;->v(Ljava/lang/String;)Z

    .line 549
    .line 550
    .line 551
    move-result v23

    .line 552
    if-nez v23, :cond_20

    .line 553
    .line 554
    move/from16 v23, v10

    .line 555
    .line 556
    goto :goto_e

    .line 557
    :cond_20
    move/from16 v23, v10

    .line 558
    .line 559
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v10

    .line 563
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 564
    .line 565
    .line 566
    move-result v24

    .line 567
    if-eqz v24, :cond_21

    .line 568
    .line 569
    :goto_e
    move/from16 v25, v9

    .line 570
    .line 571
    goto/16 :goto_f

    .line 572
    .line 573
    :cond_21
    if-ge v4, v14, :cond_22

    .line 574
    .line 575
    move/from16 v24, v4

    .line 576
    .line 577
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-eqz v4, :cond_23

    .line 584
    .line 585
    add-int/lit8 v4, v24, 0x1

    .line 586
    .line 587
    goto :goto_e

    .line 588
    :cond_22
    move/from16 v24, v4

    .line 589
    .line 590
    :cond_23
    iget-boolean v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->k:Z

    .line 591
    .line 592
    if-eqz v4, :cond_24

    .line 593
    .line 594
    if-nez v19, :cond_24

    .line 595
    .line 596
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 597
    .line 598
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    if-eqz v4, :cond_24

    .line 603
    .line 604
    move/from16 v19, v16

    .line 605
    .line 606
    :cond_24
    new-instance v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 607
    .line 608
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 609
    .line 610
    .line 611
    move/from16 v25, v9

    .line 612
    .line 613
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    iput-object v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 618
    .line 619
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v9

    .line 623
    iput-object v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 624
    .line 625
    iput-object v10, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 626
    .line 627
    invoke-static/range {v22 .. v22}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v9

    .line 631
    iput-object v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 632
    .line 633
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 634
    .line 635
    .line 636
    move-result-wide v9

    .line 637
    iput-wide v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 638
    .line 639
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v9

    .line 643
    iput-object v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 644
    .line 645
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 646
    .line 647
    .line 648
    move-result-wide v9

    .line 649
    long-to-int v9, v9

    .line 650
    iput v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 651
    .line 652
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 653
    .line 654
    .line 655
    move-result-wide v9

    .line 656
    long-to-int v9, v9

    .line 657
    iput v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 658
    .line 659
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 660
    .line 661
    .line 662
    move-result v9

    .line 663
    iput v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 664
    .line 665
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 666
    .line 667
    .line 668
    move-result-wide v9

    .line 669
    iput-wide v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 670
    .line 671
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 672
    .line 673
    .line 674
    move-result-wide v9

    .line 675
    iput-wide v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 676
    .line 677
    const/4 v9, 0x4

    .line 678
    iput v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 679
    .line 680
    const v9, -0x70708

    .line 681
    .line 682
    .line 683
    iput v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 684
    .line 685
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 686
    .line 687
    iput v9, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 688
    .line 689
    invoke-static {v4}, Lcom/mycompany/app/list/ListTaskAlbum;->s(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 690
    .line 691
    .line 692
    iget-object v9, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move/from16 v4, v24

    .line 698
    .line 699
    :goto_f
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 700
    .line 701
    if-nez v9, :cond_26

    .line 702
    .line 703
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 704
    .line 705
    .line 706
    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 707
    if-nez v9, :cond_25

    .line 708
    .line 709
    goto :goto_10

    .line 710
    :cond_25
    move/from16 v10, v23

    .line 711
    .line 712
    move/from16 v9, v25

    .line 713
    .line 714
    goto/16 :goto_d

    .line 715
    .line 716
    :catch_1
    :cond_26
    :goto_10
    move/from16 v14, v19

    .line 717
    .line 718
    goto :goto_12

    .line 719
    :catch_2
    move-object/from16 v21, v4

    .line 720
    .line 721
    :goto_11
    move/from16 v19, v14

    .line 722
    .line 723
    goto :goto_12

    .line 724
    :catch_3
    move-object/from16 v21, v4

    .line 725
    .line 726
    move/from16 v20, v6

    .line 727
    .line 728
    goto :goto_11

    .line 729
    :cond_27
    move-object/from16 v21, v4

    .line 730
    .line 731
    move/from16 v20, v6

    .line 732
    .line 733
    move/from16 v19, v14

    .line 734
    .line 735
    goto :goto_10

    .line 736
    :catch_4
    move-object/from16 v21, v4

    .line 737
    .line 738
    move/from16 v20, v6

    .line 739
    .line 740
    move/from16 v19, v14

    .line 741
    .line 742
    const/4 v3, 0x0

    .line 743
    :goto_12
    if-eqz v3, :cond_28

    .line 744
    .line 745
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 746
    .line 747
    .line 748
    :cond_28
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 749
    .line 750
    if-eqz v1, :cond_29

    .line 751
    .line 752
    goto/16 :goto_1f

    .line 753
    .line 754
    :goto_13
    move/from16 v14, v19

    .line 755
    .line 756
    :cond_29
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->k:Z

    .line 757
    .line 758
    if-eqz v1, :cond_2a

    .line 759
    .line 760
    if-nez v14, :cond_2a

    .line 761
    .line 762
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 763
    .line 764
    const/4 v3, 0x0

    .line 765
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    if-eqz v1, :cond_2a

    .line 770
    .line 771
    invoke-static {v2, v1}, Lcom/mycompany/app/db/DbAlbum;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 772
    .line 773
    .line 774
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 775
    .line 776
    invoke-static {v1}, Lcom/mycompany/app/list/ListTaskAlbum;->r(Lcom/mycompany/app/main/MainUri$UriItem;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    .line 784
    .line 785
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .line 787
    .line 788
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 789
    .line 790
    new-instance v1, Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .line 794
    .line 795
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 796
    .line 797
    if-nez v18, :cond_2b

    .line 798
    .line 799
    sget v1, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 800
    .line 801
    if-eqz v1, :cond_2b

    .line 802
    .line 803
    move/from16 v1, v16

    .line 804
    .line 805
    goto :goto_14

    .line 806
    :cond_2b
    const/4 v1, 0x0

    .line 807
    :goto_14
    if-eqz v1, :cond_2c

    .line 808
    .line 809
    new-instance v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 810
    .line 811
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 812
    .line 813
    .line 814
    const/4 v4, 0x0

    .line 815
    iput v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 816
    .line 817
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 818
    .line 819
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    :cond_2c
    if-eqz v20, :cond_31

    .line 823
    .line 824
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 825
    .line 826
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    if-nez v3, :cond_31

    .line 831
    .line 832
    new-instance v3, Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .line 836
    .line 837
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 838
    .line 839
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    const/4 v6, 0x0

    .line 844
    :goto_15
    if-ge v6, v5, :cond_30

    .line 845
    .line 846
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    add-int/lit8 v6, v6, 0x1

    .line 851
    .line 852
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 853
    .line 854
    iget-boolean v8, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 855
    .line 856
    if-eqz v8, :cond_2d

    .line 857
    .line 858
    goto/16 :goto_1f

    .line 859
    .line 860
    :cond_2d
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 861
    .line 862
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 863
    .line 864
    .line 865
    move-result v8

    .line 866
    if-eqz v8, :cond_2e

    .line 867
    .line 868
    goto :goto_15

    .line 869
    :cond_2e
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 870
    .line 871
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 872
    .line 873
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v8

    .line 877
    move-object/from16 v9, v21

    .line 878
    .line 879
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 880
    .line 881
    .line 882
    move-result v8

    .line 883
    if-eqz v8, :cond_2f

    .line 884
    .line 885
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    :cond_2f
    move-object/from16 v21, v9

    .line 889
    .line 890
    goto :goto_15

    .line 891
    :cond_30
    iput-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 892
    .line 893
    :cond_31
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 894
    .line 895
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 896
    .line 897
    .line 898
    move-result v3

    .line 899
    if-nez v3, :cond_41

    .line 900
    .line 901
    if-nez v18, :cond_32

    .line 902
    .line 903
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 904
    .line 905
    sget v4, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 906
    .line 907
    sget v5, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 908
    .line 909
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 910
    .line 911
    invoke-static {v4, v5, v6}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    :try_start_5
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 916
    .line 917
    .line 918
    :catch_5
    :cond_32
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->t:Z

    .line 919
    .line 920
    if-eqz v3, :cond_33

    .line 921
    .line 922
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 923
    .line 924
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 925
    .line 926
    .line 927
    move-result v3

    .line 928
    new-array v4, v3, [Z

    .line 929
    .line 930
    iput-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->r:[Z

    .line 931
    .line 932
    move v9, v3

    .line 933
    goto :goto_16

    .line 934
    :cond_33
    const/4 v9, 0x0

    .line 935
    :goto_16
    iget-boolean v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->y:Z

    .line 936
    .line 937
    if-nez v3, :cond_35

    .line 938
    .line 939
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 940
    .line 941
    if-nez v3, :cond_34

    .line 942
    .line 943
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 944
    .line 945
    iput-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 946
    .line 947
    :cond_34
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 948
    .line 949
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 950
    .line 951
    .line 952
    move-result v3

    .line 953
    xor-int/lit8 v3, v3, 0x1

    .line 954
    .line 955
    goto :goto_17

    .line 956
    :cond_35
    const/4 v3, 0x0

    .line 957
    :goto_17
    iget-object v10, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 958
    .line 959
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 960
    .line 961
    .line 962
    move-result v11

    .line 963
    move v12, v3

    .line 964
    const/4 v3, 0x0

    .line 965
    const/4 v4, 0x0

    .line 966
    const/4 v5, 0x0

    .line 967
    const/4 v6, 0x0

    .line 968
    const/4 v7, 0x0

    .line 969
    const/4 v8, 0x0

    .line 970
    const/4 v13, 0x0

    .line 971
    :goto_18
    if-ge v13, v11, :cond_40

    .line 972
    .line 973
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v14

    .line 977
    add-int/lit8 v13, v13, 0x1

    .line 978
    .line 979
    check-cast v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 980
    .line 981
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 982
    .line 983
    if-eqz v15, :cond_36

    .line 984
    .line 985
    goto/16 :goto_1f

    .line 986
    .line 987
    :cond_36
    if-nez v14, :cond_37

    .line 988
    .line 989
    goto :goto_18

    .line 990
    :cond_37
    iget-object v15, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 991
    .line 992
    move/from16 v18, v1

    .line 993
    .line 994
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 995
    .line 996
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    if-eqz v18, :cond_3a

    .line 1000
    .line 1001
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    if-nez v1, :cond_38

    .line 1006
    .line 1007
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1008
    .line 1009
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    if-nez v1, :cond_38

    .line 1014
    .line 1015
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1016
    .line 1017
    move-object/from16 v3, v17

    .line 1018
    .line 1019
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/ListTaskAlbum;->p(Lcom/mycompany/app/list/ListTaskAlbum;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1020
    .line 1021
    .line 1022
    const/4 v4, 0x0

    .line 1023
    const/4 v6, 0x0

    .line 1024
    const/4 v7, 0x0

    .line 1025
    :cond_38
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1026
    .line 1027
    iget-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 1028
    .line 1029
    add-int/lit8 v6, v6, 0x1

    .line 1030
    .line 1031
    iget-object v5, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1032
    .line 1033
    if-eqz v5, :cond_39

    .line 1034
    .line 1035
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1036
    .line 1037
    .line 1038
    move-result v5

    .line 1039
    goto :goto_19

    .line 1040
    :cond_39
    const/4 v5, 0x0

    .line 1041
    :goto_19
    iput v5, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1042
    .line 1043
    move-object v5, v3

    .line 1044
    move-object v3, v1

    .line 1045
    goto :goto_1a

    .line 1046
    :cond_3a
    const/4 v1, 0x0

    .line 1047
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1048
    .line 1049
    :goto_1a
    iput v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 1050
    .line 1051
    iput v8, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1052
    .line 1053
    if-eqz v12, :cond_3b

    .line 1054
    .line 1055
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1056
    .line 1057
    iget-object v15, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 1058
    .line 1059
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    if-eqz v1, :cond_3b

    .line 1064
    .line 1065
    iput-object v14, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1066
    .line 1067
    const/4 v12, 0x0

    .line 1068
    :cond_3b
    iget-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1069
    .line 1070
    if-eqz v1, :cond_3c

    .line 1071
    .line 1072
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->r:[Z

    .line 1073
    .line 1074
    if-eqz v1, :cond_3c

    .line 1075
    .line 1076
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1077
    .line 1078
    if-ge v15, v9, :cond_3c

    .line 1079
    .line 1080
    aput-boolean v16, v1, v15

    .line 1081
    .line 1082
    iget v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->s:I

    .line 1083
    .line 1084
    add-int/lit8 v1, v1, 0x1

    .line 1085
    .line 1086
    iput v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->s:I

    .line 1087
    .line 1088
    add-int/lit8 v7, v7, 0x1

    .line 1089
    .line 1090
    :cond_3c
    iget-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 1091
    .line 1092
    if-eqz v1, :cond_3f

    .line 1093
    .line 1094
    iget v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->v:I

    .line 1095
    .line 1096
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1097
    .line 1098
    if-eq v1, v15, :cond_3e

    .line 1099
    .line 1100
    iput v15, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->v:I

    .line 1101
    .line 1102
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 1103
    .line 1104
    if-nez v1, :cond_3d

    .line 1105
    .line 1106
    new-instance v1, Ljava/util/ArrayList;

    .line 1107
    .line 1108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    .line 1110
    .line 1111
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 1112
    .line 1113
    :cond_3d
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 1114
    .line 1115
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1116
    .line 1117
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v15

    .line 1121
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v1

    .line 1125
    if-nez v1, :cond_3e

    .line 1126
    .line 1127
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 1128
    .line 1129
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1130
    .line 1131
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v15

    .line 1135
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    :cond_3e
    iget v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->x:I

    .line 1139
    .line 1140
    const/4 v15, -0x1

    .line 1141
    if-ne v1, v15, :cond_3f

    .line 1142
    .line 1143
    iget v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1144
    .line 1145
    iput v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->x:I

    .line 1146
    .line 1147
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    .line 1148
    .line 1149
    add-int/lit8 v8, v8, 0x1

    .line 1150
    .line 1151
    const/4 v1, 0x0

    .line 1152
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 1153
    .line 1154
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 1155
    .line 1156
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1157
    .line 1158
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 1159
    .line 1160
    move/from16 v1, v18

    .line 1161
    .line 1162
    goto/16 :goto_18

    .line 1163
    .line 1164
    :cond_40
    move/from16 v18, v1

    .line 1165
    .line 1166
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    if-nez v1, :cond_42

    .line 1171
    .line 1172
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1173
    .line 1174
    move-object/from16 v3, v17

    .line 1175
    .line 1176
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/ListTaskAlbum;->p(Lcom/mycompany/app/list/ListTaskAlbum;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_1b

    .line 1180
    :cond_41
    move/from16 v18, v1

    .line 1181
    .line 1182
    :cond_42
    :goto_1b
    if-nez v18, :cond_44

    .line 1183
    .line 1184
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1185
    .line 1186
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1187
    .line 1188
    .line 1189
    const/4 v3, 0x0

    .line 1190
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 1191
    .line 1192
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 1193
    .line 1194
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1195
    .line 1196
    .line 1197
    move-result v4

    .line 1198
    iput v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 1199
    .line 1200
    iget v5, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->s:I

    .line 1201
    .line 1202
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1203
    .line 1204
    if-ne v5, v4, :cond_43

    .line 1205
    .line 1206
    move/from16 v4, v16

    .line 1207
    .line 1208
    goto :goto_1c

    .line 1209
    :cond_43
    move v4, v3

    .line 1210
    :goto_1c
    iput-boolean v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1211
    .line 1212
    iget-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    goto :goto_1d

    .line 1218
    :cond_44
    const/4 v3, 0x0

    .line 1219
    :goto_1d
    iget-boolean v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->t:Z

    .line 1220
    .line 1221
    if-eqz v1, :cond_46

    .line 1222
    .line 1223
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1224
    .line 1225
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v1

    .line 1229
    if-nez v1, :cond_46

    .line 1230
    .line 1231
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1232
    .line 1233
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1234
    .line 1235
    .line 1236
    move-result v1

    .line 1237
    new-array v4, v1, [Z

    .line 1238
    .line 1239
    iput-object v4, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->p:[Z

    .line 1240
    .line 1241
    new-array v1, v1, [I

    .line 1242
    .line 1243
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->q:[I

    .line 1244
    .line 1245
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 1246
    .line 1247
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1248
    .line 1249
    .line 1250
    move-result v4

    .line 1251
    move v10, v3

    .line 1252
    :goto_1e
    if-ge v10, v4, :cond_46

    .line 1253
    .line 1254
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v3

    .line 1258
    add-int/lit8 v10, v10, 0x1

    .line 1259
    .line 1260
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1261
    .line 1262
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1263
    .line 1264
    if-eqz v5, :cond_45

    .line 1265
    .line 1266
    goto :goto_1f

    .line 1267
    :cond_45
    iget v5, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 1268
    .line 1269
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->p:[Z

    .line 1270
    .line 1271
    iget-boolean v7, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1272
    .line 1273
    aput-boolean v7, v6, v5

    .line 1274
    .line 1275
    iget-object v6, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->q:[I

    .line 1276
    .line 1277
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1278
    .line 1279
    aput v3, v6, v5

    .line 1280
    .line 1281
    goto :goto_1e

    .line 1282
    :cond_46
    invoke-static {v2}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 1287
    .line 1288
    iget-object v3, v0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 1289
    .line 1290
    iput-object v2, v1, Lcom/mycompany/app/data/DataList;->a:Ljava/util/List;

    .line 1291
    .line 1292
    iput-object v3, v1, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 1293
    .line 1294
    :cond_47
    :goto_1f
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/ListTaskAlbum;

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
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum;->c:Lcom/mycompany/app/list/ListTaskAlbum$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->o:Ljava/util/List;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->p:[Z

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->q:[I

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->r:[Z

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->u:Ljava/util/List;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 50
    .line 51
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/ListTaskAlbum;

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
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskAlbum;->c:Lcom/mycompany/app/list/ListTaskAlbum$ListTask;

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
    iget-boolean v2, v0, Lcom/mycompany/app/list/ListTaskAlbum;->e:Z

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/mycompany/app/list/ListTaskAlbum;->f:Z

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/list/ListTaskAlbum;->g(Z)V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 42
    .line 43
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->p:[Z

    .line 50
    .line 51
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 52
    .line 53
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->q:[I

    .line 54
    .line 55
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->r:[Z

    .line 58
    .line 59
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 60
    .line 61
    iget v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->s:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 69
    .line 70
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 71
    .line 72
    iget v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->x:I

    .line 73
    .line 74
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 75
    .line 76
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 77
    .line 78
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 79
    .line 80
    iget-boolean v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->t:Z

    .line 81
    .line 82
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 83
    .line 84
    iget v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->z:I

    .line 85
    .line 86
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->t:I

    .line 87
    .line 88
    iget-object v3, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->B:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->i:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->j:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->n:Ljava/util/ArrayList;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->o:Ljava/util/List;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->p:[Z

    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->q:[I

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->r:[Z

    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->u:Ljava/util/List;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/list/ListTaskAlbum$ListTask;->w:Ljava/util/ArrayList;

    .line 116
    .line 117
    return-void
.end method
