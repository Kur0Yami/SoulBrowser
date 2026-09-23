.class Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field public final f:Lcom/bumptech/glide/load/engine/DecodeHelper;

.field public g:I

.field public h:I

.field public i:Lcom/bumptech/glide/load/Key;

.field public j:Ljava/util/List;

.field public k:I

.field public volatile l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

.field public m:Ljava/io/File;

.field public n:Lcom/bumptech/glide/load/engine/ResourceCacheKey;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->h:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->c:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Failed to find any load path from "

    .line 4
    .line 5
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->a()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/16 v17, 0x0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 22
    .line 23
    iget-object v5, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/Registry;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->d:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v7, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->g:Ljava/lang/Class;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->k:Ljava/lang/Class;

    .line 38
    .line 39
    iget-object v8, v5, Lcom/bumptech/glide/Registry;->h:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    .line 40
    .line 41
    iget-object v9, v8, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    check-cast v9, Lcom/bumptech/glide/util/MultiClassKey;

    .line 49
    .line 50
    if-nez v9, :cond_1

    .line 51
    .line 52
    new-instance v9, Lcom/bumptech/glide/util/MultiClassKey;

    .line 53
    .line 54
    invoke-direct {v9, v6, v7, v3}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput-object v6, v9, Lcom/bumptech/glide/util/MultiClassKey;->a:Ljava/lang/Class;

    .line 59
    .line 60
    iput-object v7, v9, Lcom/bumptech/glide/util/MultiClassKey;->b:Ljava/lang/Class;

    .line 61
    .line 62
    iput-object v3, v9, Lcom/bumptech/glide/util/MultiClassKey;->c:Ljava/lang/Class;

    .line 63
    .line 64
    :goto_0
    iget-object v11, v8, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->b:Landroidx/collection/ArrayMap;

    .line 65
    .line 66
    monitor-enter v11

    .line 67
    :try_start_0
    iget-object v12, v8, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->b:Landroidx/collection/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v12, v9}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    check-cast v12, Ljava/util/List;

    .line 74
    .line 75
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v8, v8, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    if-nez v12, :cond_5

    .line 82
    .line 83
    new-instance v12, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v8, v5, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 89
    .line 90
    invoke-virtual {v8, v6}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->b(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    const/4 v11, 0x0

    .line 99
    :cond_2
    if-ge v11, v9, :cond_4

    .line 100
    .line 101
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    add-int/lit8 v11, v11, 0x1

    .line 106
    .line 107
    check-cast v13, Ljava/lang/Class;

    .line 108
    .line 109
    iget-object v14, v5, Lcom/bumptech/glide/Registry;->c:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 110
    .line 111
    invoke-virtual {v14, v13, v7}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    const/4 v15, 0x0

    .line 120
    :goto_1
    if-ge v15, v14, :cond_2

    .line 121
    .line 122
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v16

    .line 126
    add-int/lit8 v15, v15, 0x1

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    move-object/from16 v4, v16

    .line 131
    .line 132
    check-cast v4, Ljava/lang/Class;

    .line 133
    .line 134
    iget-object v10, v5, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 135
    .line 136
    invoke-virtual {v10, v4, v3}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-nez v10, :cond_3

    .line 145
    .line 146
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-nez v10, :cond_3

    .line 151
    .line 152
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_3
    const/4 v10, 0x0

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    const/16 v17, 0x0

    .line 158
    .line 159
    iget-object v4, v5, Lcom/bumptech/glide/Registry;->h:Lcom/bumptech/glide/provider/ModelToResourceClassCache;

    .line 160
    .line 161
    invoke-static {v12}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v4, v6, v7, v3, v5}, Lcom/bumptech/glide/provider/ModelToResourceClassCache;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    const/16 v17, 0x0

    .line 170
    .line 171
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    const-class v2, Ljava/io/File;

    .line 178
    .line 179
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 180
    .line 181
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->k:Ljava/lang/Class;

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_6

    .line 188
    .line 189
    goto/16 :goto_5

    .line 190
    .line 191
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeHelper;->d:Ljava/lang/Object;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, " to "

    .line 210
    .line 211
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeHelper;->k:Ljava/lang/Class;

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v2

    .line 229
    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->j:Ljava/util/List;

    .line 230
    .line 231
    const/4 v3, 0x1

    .line 232
    if-eqz v0, :cond_a

    .line 233
    .line 234
    iget v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->k:I

    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-ge v4, v0, :cond_a

    .line 241
    .line 242
    const/4 v0, 0x0

    .line 243
    iput-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 244
    .line 245
    move/from16 v4, v17

    .line 246
    .line 247
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 248
    .line 249
    iget v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->k:I

    .line 250
    .line 251
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->j:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-ge v0, v2, :cond_9

    .line 258
    .line 259
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->j:Ljava/util/List;

    .line 260
    .line 261
    iget v2, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->k:I

    .line 262
    .line 263
    add-int/lit8 v5, v2, 0x1

    .line 264
    .line 265
    iput v5, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->k:I

    .line 266
    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 272
    .line 273
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->m:Ljava/io/File;

    .line 274
    .line 275
    iget-object v5, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 276
    .line 277
    iget v6, v5, Lcom/bumptech/glide/load/engine/DecodeHelper;->e:I

    .line 278
    .line 279
    iget v7, v5, Lcom/bumptech/glide/load/engine/DecodeHelper;->f:I

    .line 280
    .line 281
    iget-object v5, v5, Lcom/bumptech/glide/load/engine/DecodeHelper;->i:Lcom/bumptech/glide/load/Options;

    .line 282
    .line 283
    invoke-interface {v0, v2, v6, v7, v5}, Lcom/bumptech/glide/load/model/ModelLoader;->b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iput-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 288
    .line 289
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 290
    .line 291
    if-eqz v0, :cond_8

    .line 292
    .line 293
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 294
    .line 295
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 296
    .line 297
    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 298
    .line 299
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/DataFetcher;->a()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_8

    .line 308
    .line 309
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 310
    .line 311
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 312
    .line 313
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 314
    .line 315
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeHelper;->o:Lcom/bumptech/glide/Priority;

    .line 316
    .line 317
    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/data/DataFetcher;->e(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 318
    .line 319
    .line 320
    move v4, v3

    .line 321
    goto :goto_4

    .line 322
    :cond_9
    return v4

    .line 323
    :cond_a
    const/4 v0, 0x0

    .line 324
    iget v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->h:I

    .line 325
    .line 326
    add-int/2addr v4, v3

    .line 327
    iput v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->h:I

    .line 328
    .line 329
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-lt v4, v5, :cond_c

    .line 334
    .line 335
    iget v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->g:I

    .line 336
    .line 337
    add-int/2addr v4, v3

    .line 338
    iput v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->g:I

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-lt v4, v3, :cond_b

    .line 345
    .line 346
    :goto_5
    return v17

    .line 347
    :cond_b
    move/from16 v3, v17

    .line 348
    .line 349
    iput v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->h:I

    .line 350
    .line 351
    :cond_c
    iget v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->g:I

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    move-object/from16 v20, v3

    .line 358
    .line 359
    check-cast v20, Lcom/bumptech/glide/load/Key;

    .line 360
    .line 361
    iget v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->h:I

    .line 362
    .line 363
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Ljava/lang/Class;

    .line 368
    .line 369
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 370
    .line 371
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->d(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    .line 372
    .line 373
    .line 374
    move-result-object v24

    .line 375
    new-instance v18, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 376
    .line 377
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 378
    .line 379
    iget-object v5, v4, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 380
    .line 381
    iget-object v5, v5, Lcom/bumptech/glide/GlideContext;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 382
    .line 383
    iget-object v6, v4, Lcom/bumptech/glide/load/engine/DecodeHelper;->n:Lcom/bumptech/glide/load/Key;

    .line 384
    .line 385
    iget v7, v4, Lcom/bumptech/glide/load/engine/DecodeHelper;->e:I

    .line 386
    .line 387
    iget v8, v4, Lcom/bumptech/glide/load/engine/DecodeHelper;->f:I

    .line 388
    .line 389
    iget-object v9, v4, Lcom/bumptech/glide/load/engine/DecodeHelper;->i:Lcom/bumptech/glide/load/Options;

    .line 390
    .line 391
    move-object/from16 v25, v3

    .line 392
    .line 393
    move-object/from16 v19, v5

    .line 394
    .line 395
    move-object/from16 v21, v6

    .line 396
    .line 397
    move/from16 v22, v7

    .line 398
    .line 399
    move/from16 v23, v8

    .line 400
    .line 401
    move-object/from16 v26, v9

    .line 402
    .line 403
    invoke-direct/range {v18 .. v26}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .line 404
    .line 405
    .line 406
    move-object/from16 v5, v18

    .line 407
    .line 408
    move-object/from16 v3, v20

    .line 409
    .line 410
    iput-object v5, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->n:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 411
    .line 412
    iget-object v4, v4, Lcom/bumptech/glide/load/engine/DecodeHelper;->h:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 413
    .line 414
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    iget-object v5, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->n:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 419
    .line 420
    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->b(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    iput-object v4, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->m:Ljava/io/File;

    .line 425
    .line 426
    if-eqz v4, :cond_d

    .line 427
    .line 428
    iput-object v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->i:Lcom/bumptech/glide/load/Key;

    .line 429
    .line 430
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->f:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 431
    .line 432
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 433
    .line 434
    invoke-virtual {v3}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/Registry;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    iget-object v3, v3, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    iput-object v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->j:Ljava/util/List;

    .line 445
    .line 446
    const/4 v3, 0x0

    .line 447
    iput v3, v1, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->k:I

    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_d
    const/4 v3, 0x0

    .line 451
    :goto_6
    move/from16 v17, v3

    .line 452
    .line 453
    goto/16 :goto_3

    .line 454
    .line 455
    :catchall_0
    move-exception v0

    .line 456
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    throw v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->c:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->n:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 8
    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->h:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    check-cast v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->c:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->i:Lcom/bumptech/glide/load/Key;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->l:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 8
    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->h:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->n:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->c(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
