.class Lcom/mycompany/app/main/MainListLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListLoader;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListLoader$1;->c:Lcom/mycompany/app/main/MainListLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListLoader$1;->c:Lcom/mycompany/app/main/MainListLoader;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iget-object v3, v0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v3, :cond_c

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_b

    .line 34
    .line 35
    iget-object v4, v0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListLoader;->h:Z

    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-object v6, v2

    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 52
    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    iget-object v5, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iget-object v5, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;

    .line 61
    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    instance-of v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 73
    .line 74
    if-eqz v6, :cond_6

    .line 75
    .line 76
    check-cast v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 77
    .line 78
    iget v5, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->E:I

    .line 79
    .line 80
    iget-object v6, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 81
    .line 82
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    if-ne v5, v7, :cond_2

    .line 85
    .line 86
    :try_start_1
    iget-object v3, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_6
    :try_start_2
    instance-of v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 91
    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 95
    .line 96
    iget-wide v5, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->u:J

    .line 97
    .line 98
    iget-object v7, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 99
    .line 100
    iget-wide v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .line 102
    cmp-long v5, v5, v8

    .line 103
    .line 104
    if-nez v5, :cond_2

    .line 105
    .line 106
    :try_start_3
    iget-object v3, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    .line 108
    move-object v6, v7

    .line 109
    goto :goto_3

    .line 110
    :catch_1
    move-object v6, v7

    .line 111
    goto :goto_2

    .line 112
    :cond_7
    :try_start_4
    instance-of v6, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 113
    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    check-cast v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 117
    .line 118
    iget v5, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 119
    .line 120
    iget-object v6, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 121
    .line 122
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 123
    .line 124
    if-ne v5, v7, :cond_2

    .line 125
    .line 126
    :try_start_5
    iget-object v3, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    :try_start_6
    instance-of v6, v5, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 130
    .line 131
    if-eqz v6, :cond_9

    .line 132
    .line 133
    check-cast v5, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 134
    .line 135
    iget v5, v5, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 136
    .line 137
    iget-object v6, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 138
    .line 139
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 140
    .line 141
    if-ne v5, v7, :cond_2

    .line 142
    .line 143
    :try_start_7
    iget-object v3, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    :try_start_8
    instance-of v6, v5, Ljava/lang/Integer;

    .line 147
    .line 148
    if-eqz v6, :cond_a

    .line 149
    .line 150
    check-cast v5, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    iget-object v6, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 157
    .line 158
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 159
    .line 160
    if-ne v5, v7, :cond_2

    .line 161
    .line 162
    :try_start_9
    iget-object v3, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_a
    :try_start_a
    instance-of v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 166
    .line 167
    if-eqz v6, :cond_2

    .line 168
    .line 169
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 170
    .line 171
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    iget-object v6, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 176
    .line 177
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 178
    .line 179
    if-ne v5, v7, :cond_2

    .line 180
    .line 181
    :try_start_b
    iget-object v3, v4, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_b
    move-object v3, v2

    .line 185
    move-object v6, v3

    .line 186
    goto :goto_3

    .line 187
    :cond_c
    :goto_1
    :try_start_c
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListLoader;->h:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 188
    .line 189
    return-void

    .line 190
    :catch_2
    :goto_2
    move-object v3, v2

    .line 191
    :goto_3
    if-eqz v6, :cond_21

    .line 192
    .line 193
    if-nez v3, :cond_d

    .line 194
    .line 195
    goto/16 :goto_6

    .line 196
    .line 197
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->a:Landroid/content/Context;

    .line 198
    .line 199
    const/16 v4, 0xb

    .line 200
    .line 201
    const/4 v5, 0x2

    .line 202
    :try_start_d
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 203
    .line 204
    const/4 v8, 0x1

    .line 205
    if-ne v7, v8, :cond_10

    .line 206
    .line 207
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->e:Lcom/mycompany/app/view/GlideRequests;

    .line 208
    .line 209
    if-eqz v1, :cond_f

    .line 210
    .line 211
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v1}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 217
    sget-object v7, Lcom/bumptech/glide/util/Executors;->b:Ljava/util/concurrent/Executor;

    .line 218
    .line 219
    if-eqz v1, :cond_e

    .line 220
    .line 221
    :try_start_e
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->e:Lcom/mycompany/app/view/GlideRequests;

    .line 222
    .line 223
    const-class v8, Landroid/graphics/drawable/PictureDrawable;

    .line 224
    .line 225
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 230
    .line 231
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 232
    .line 233
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 238
    .line 239
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 240
    .line 241
    invoke-virtual {v1, v8, v8}, Lcom/mycompany/app/view/GlideRequest;->n(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 246
    .line 247
    new-instance v8, Lcom/bumptech/glide/request/RequestFutureTarget;

    .line 248
    .line 249
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v8, v8, v1, v7}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Lcom/bumptech/glide/request/RequestFutureTarget;->get()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Landroid/graphics/drawable/PictureDrawable;

    .line 260
    .line 261
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 262
    .line 263
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    goto/16 :goto_4

    .line 268
    .line 269
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->e:Lcom/mycompany/app/view/GlideRequests;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget-object v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 276
    .line 277
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 278
    .line 279
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 284
    .line 285
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 286
    .line 287
    invoke-virtual {v1, v8, v8}, Lcom/mycompany/app/view/GlideRequest;->n(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 292
    .line 293
    new-instance v8, Lcom/bumptech/glide/request/RequestFutureTarget;

    .line 294
    .line 295
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v8, v8, v1, v7}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Lcom/bumptech/glide/request/RequestFutureTarget;->get()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Landroid/graphics/Bitmap;

    .line 306
    .line 307
    move-object v2, v1

    .line 308
    goto/16 :goto_4

    .line 309
    .line 310
    :cond_f
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListLoader;->b:Z

    .line 311
    .line 312
    invoke-static {v6, v1}, Lcom/mycompany/app/main/MainUtil;->W1(Lcom/mycompany/app/main/MainItem$ChildItem;Z)Landroid/graphics/Bitmap;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    goto :goto_4

    .line 317
    :cond_10
    if-ne v7, v5, :cond_11

    .line 318
    .line 319
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->e4(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    goto :goto_4

    .line 324
    :cond_11
    const/4 v8, 0x3

    .line 325
    if-ne v7, v8, :cond_12

    .line 326
    .line 327
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->x2(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    goto :goto_4

    .line 332
    :cond_12
    const/4 v8, 0x4

    .line 333
    if-ne v7, v8, :cond_13

    .line 334
    .line 335
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->P(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    goto :goto_4

    .line 340
    :cond_13
    const/4 v8, 0x5

    .line 341
    if-ne v7, v8, :cond_14

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_14
    const/4 v8, 0x6

    .line 345
    if-ne v7, v8, :cond_17

    .line 346
    .line 347
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 348
    .line 349
    if-eqz v7, :cond_16

    .line 350
    .line 351
    iget-object v7, v0, Lcom/mycompany/app/main/MainListLoader;->l:Landroid/content/pm/PackageManager;

    .line 352
    .line 353
    if-nez v7, :cond_15

    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    iput-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->l:Landroid/content/pm/PackageManager;

    .line 360
    .line 361
    :cond_15
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 362
    .line 363
    iget-object v7, v0, Lcom/mycompany/app/main/MainListLoader;->l:Landroid/content/pm/PackageManager;

    .line 364
    .line 365
    invoke-virtual {v1, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 370
    .line 371
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    goto :goto_4

    .line 376
    :cond_16
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 377
    .line 378
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    goto :goto_4

    .line 383
    :cond_17
    const/16 v8, 0x8

    .line 384
    .line 385
    if-ne v7, v8, :cond_19

    .line 386
    .line 387
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->P:Lcom/mycompany/app/compress/Compress;

    .line 388
    .line 389
    if-nez v1, :cond_18

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_18
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 393
    .line 394
    invoke-virtual {v1, v7}, Lcom/mycompany/app/compress/Compress;->p(I)Landroid/graphics/Bitmap;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    goto :goto_4

    .line 399
    :cond_19
    if-ne v7, v4, :cond_1a

    .line 400
    .line 401
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 402
    .line 403
    iget-wide v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 404
    .line 405
    iget-object v10, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v7, v8, v9, v1, v10}, Lcom/mycompany/app/main/MainUtil;->g0(IJLandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 408
    .line 409
    .line 410
    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 411
    :catch_3
    :cond_1a
    :goto_4
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_1f

    .line 416
    .line 417
    iget v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 418
    .line 419
    const/16 v7, 0x21

    .line 420
    .line 421
    if-ne v1, v7, :cond_1b

    .line 422
    .line 423
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 424
    .line 425
    iget-boolean v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 426
    .line 427
    invoke-static {v1, v2, v4}, Lcom/mycompany/app/main/MainListLoader;->g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_1b
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 432
    .line 433
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_1c

    .line 438
    .line 439
    goto :goto_5

    .line 440
    :cond_1c
    iget v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 441
    .line 442
    if-ne v1, v4, :cond_1e

    .line 443
    .line 444
    iget v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 445
    .line 446
    const/16 v4, 0x12

    .line 447
    .line 448
    if-eq v1, v4, :cond_1d

    .line 449
    .line 450
    const/16 v4, 0x28

    .line 451
    .line 452
    if-ne v1, v4, :cond_1e

    .line 453
    .line 454
    :cond_1d
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 461
    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_1e
    iget-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 465
    .line 466
    invoke-static {v5, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {v4, v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 479
    .line 480
    .line 481
    :cond_1f
    :goto_5
    iput-object v6, v0, Lcom/mycompany/app/main/MainListLoader;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 482
    .line 483
    iput-object v3, v0, Lcom/mycompany/app/main/MainListLoader;->j:Landroid/view/View;

    .line 484
    .line 485
    iput-object v2, v0, Lcom/mycompany/app/main/MainListLoader;->k:Landroid/graphics/Bitmap;

    .line 486
    .line 487
    iget-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 488
    .line 489
    if-nez v1, :cond_20

    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_20
    new-instance v2, Lcom/mycompany/app/main/MainListLoader$2;

    .line 493
    .line 494
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListLoader$2;-><init>(Lcom/mycompany/app/main/MainListLoader;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_21
    :goto_6
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListLoader;->h:Z

    .line 502
    .line 503
    :goto_7
    return-void
.end method
