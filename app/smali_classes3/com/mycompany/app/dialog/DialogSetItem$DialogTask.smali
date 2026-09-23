.class Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/List;

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetItem;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogSetItem;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->g:I

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->h:Z

    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->i:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogSetItem;

    .line 12
    .line 13
    if-eqz v0, :cond_15

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->a0:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->n0:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_f

    .line 38
    .line 39
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->c0:[I

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetItem;->c0:[I

    .line 52
    .line 53
    array-length v5, v4

    .line 54
    move v6, v2

    .line 55
    :goto_0
    if-ge v6, v5, :cond_5

    .line 56
    .line 57
    aget v7, v4, v6

    .line 58
    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v1, 0x0

    .line 70
    :cond_5
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetItem;->d0:[I

    .line 71
    .line 72
    if-eqz v4, :cond_7

    .line 73
    .line 74
    array-length v4, v4

    .line 75
    if-eqz v4, :cond_7

    .line 76
    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetItem;->d0:[I

    .line 85
    .line 86
    array-length v5, v4

    .line 87
    move v6, v2

    .line 88
    :goto_1
    if-ge v6, v5, :cond_7

    .line 89
    .line 90
    aget v7, v4, v6

    .line 91
    .line 92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_7
    invoke-static {v2, v2}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v6, 0x3

    .line 112
    :goto_2
    const/16 v7, 0x4b

    .line 113
    .line 114
    if-ge v6, v7, :cond_b

    .line 115
    .line 116
    const/16 v7, 0x44

    .line 117
    .line 118
    if-ne v6, v7, :cond_8

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    new-instance v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 122
    .line 123
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput v6, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 127
    .line 128
    invoke-static {v6, v4}, Lcom/mycompany/app/main/MainUtil;->m2(II)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    iput v8, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    .line 133
    .line 134
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogSetItem;->a0:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    iput-object v8, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    .line 145
    .line 146
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 147
    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    iput-object v8, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    .line 153
    .line 154
    iget v8, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 155
    .line 156
    iget v9, v0, Lcom/mycompany/app/dialog/DialogSetItem;->e0:I

    .line 157
    .line 158
    if-ne v8, v9, :cond_9

    .line 159
    .line 160
    iput-boolean v3, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    if-eqz v1, :cond_a

    .line 164
    .line 165
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_a

    .line 174
    .line 175
    iput-boolean v3, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->k:Z

    .line 176
    .line 177
    :cond_a
    :goto_3
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_e

    .line 188
    .line 189
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetItem$SortItem;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 192
    .line 193
    .line 194
    :try_start_0
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    :catch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    move v4, v2

    .line 202
    move v6, v4

    .line 203
    :goto_5
    if-ge v6, v1, :cond_e

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    add-int/lit8 v6, v6, 0x1

    .line 210
    .line 211
    check-cast v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 212
    .line 213
    if-nez v7, :cond_c

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_c
    iget-boolean v7, v7, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 217
    .line 218
    if-eqz v7, :cond_d

    .line 219
    .line 220
    iput v4, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->g:I

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_e
    :goto_6
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetItem;->n0:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_f

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->n0:Ljava/util/ArrayList;

    .line 236
    .line 237
    if-eqz v1, :cond_15

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_10

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_10
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->i:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_11

    .line 253
    .line 254
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->f:Ljava/util/List;

    .line 255
    .line 256
    return-void

    .line 257
    :cond_11
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->h:Z

    .line 258
    .line 259
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->i:Ljava/lang/String;

    .line 260
    .line 261
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->i:Ljava/lang/String;

    .line 268
    .line 269
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogSetItem;->f0:Z

    .line 270
    .line 271
    new-instance v3, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .line 275
    .line 276
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->f:Ljava/util/List;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    :cond_12
    :goto_7
    if-ge v2, v3, :cond_15

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    add-int/lit8 v2, v2, 0x1

    .line 289
    .line 290
    check-cast v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 291
    .line 292
    if-nez v4, :cond_13

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_13
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->i:Ljava/lang/String;

    .line 296
    .line 297
    if-eqz v0, :cond_14

    .line 298
    .line 299
    iget-object v6, v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->e:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v7, v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v6, v7, v5}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    if-nez v7, :cond_14

    .line 312
    .line 313
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 314
    .line 315
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    iput-object v5, v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->h:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->f:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_14
    iget-object v6, v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_12

    .line 334
    .line 335
    iput-object v5, v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->h:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->f:Ljava/util/List;

    .line 338
    .line 339
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_15
    :goto_8
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogSetItem;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogSetItem;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->m0:Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->f:Ljava/util/List;

    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->g:I

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetItem$DialogTask;->h:Z

    .line 23
    .line 24
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 25
    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetItem;->o0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iput-object v3, v4, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 34
    .line 35
    iput-boolean v2, v4, Lcom/mycompany/app/main/MainSelectAdapter;->k:Z

    .line 36
    .line 37
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 42
    .line 43
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetItem;->e0:I

    .line 44
    .line 45
    new-instance v7, Lcom/mycompany/app/dialog/DialogSetItem$9;

    .line 46
    .line 47
    invoke-direct {v7, v0}, Lcom/mycompany/app/dialog/DialogSetItem$9;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v6, 0x1

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetItem;->o0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-ge v1, v2, :cond_4

    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 67
    .line 68
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetItem$10;

    .line 69
    .line 70
    invoke-direct {v3, v0, v1}, Lcom/mycompany/app/dialog/DialogSetItem$10;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method
