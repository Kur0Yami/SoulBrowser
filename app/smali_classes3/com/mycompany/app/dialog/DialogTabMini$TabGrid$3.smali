.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;->f:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;->f:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->a:Z

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_d

    .line 14
    .line 15
    :cond_0
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 16
    .line 17
    if-ne v5, v2, :cond_2

    .line 18
    .line 19
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;->c:Z

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMini;->e0:Ljava/util/List;

    .line 25
    .line 26
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    invoke-static {v4, v2}, Lcom/mycompany/app/db/book/DbBookTab;->d(Landroid/content/Context;Z)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 34
    .line 35
    :goto_1
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    goto/16 :goto_d

    .line 40
    .line 41
    :cond_3
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    iput-wide v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d:J

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    iput v6, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 47
    .line 48
    iput v6, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->f:I

    .line 49
    .line 50
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 51
    .line 52
    if-eqz v7, :cond_4

    .line 53
    .line 54
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_5

    .line 59
    .line 60
    :cond_4
    const/4 v6, 0x0

    .line 61
    goto/16 :goto_b

    .line 62
    .line 63
    :cond_5
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 64
    .line 65
    if-eqz v9, :cond_6

    .line 66
    .line 67
    iget v2, v9, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 68
    .line 69
    iput v2, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    if-eqz v2, :cond_7

    .line 73
    .line 74
    sget v2, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 75
    .line 76
    iput v2, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    sget v2, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 80
    .line 81
    iput v2, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 82
    .line 83
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    sget v9, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 89
    .line 90
    const/4 v10, 0x1

    .line 91
    if-nez v9, :cond_8

    .line 92
    .line 93
    move v9, v6

    .line 94
    goto :goto_3

    .line 95
    :cond_8
    new-instance v9, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput v10, v9, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 101
    .line 102
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move v9, v10

    .line 106
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    move-wide v11, v4

    .line 111
    move-wide/from16 v16, v11

    .line 112
    .line 113
    move v8, v6

    .line 114
    move v13, v8

    .line 115
    move v14, v13

    .line 116
    const/4 v15, 0x0

    .line 117
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v18

    .line 121
    if-eqz v18, :cond_10

    .line 122
    .line 123
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v18

    .line 127
    move-wide/from16 v19, v4

    .line 128
    .line 129
    move-object/from16 v4, v18

    .line 130
    .line 131
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 132
    .line 133
    if-nez v4, :cond_9

    .line 134
    .line 135
    move-wide/from16 v4, v19

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_9
    new-instance v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    move-object/from16 v21, v7

    .line 144
    .line 145
    iget-wide v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 146
    .line 147
    iput-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 148
    .line 149
    iget-wide v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 150
    .line 151
    iput-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 152
    .line 153
    iget-wide v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 154
    .line 155
    iput-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 156
    .line 157
    iget-object v10, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v10, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 160
    .line 161
    iget v10, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 162
    .line 163
    iput v10, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 164
    .line 165
    iput v8, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 166
    .line 167
    iget-object v10, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v10, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v10, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 172
    .line 173
    iput-object v10, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 174
    .line 175
    iget-boolean v10, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 176
    .line 177
    iput-boolean v10, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 178
    .line 179
    iget-object v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 180
    .line 181
    iput-object v4, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 182
    .line 183
    if-eqz v15, :cond_a

    .line 184
    .line 185
    cmp-long v4, v6, v19

    .line 186
    .line 187
    if-eqz v4, :cond_b

    .line 188
    .line 189
    cmp-long v4, v6, v16

    .line 190
    .line 191
    if-eqz v4, :cond_a

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    move-object v7, v5

    .line 195
    goto :goto_7

    .line 196
    :cond_b
    :goto_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    const/4 v6, 0x1

    .line 201
    if-ne v4, v6, :cond_c

    .line 202
    .line 203
    const/4 v4, 0x0

    .line 204
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 209
    .line 210
    move-object v7, v5

    .line 211
    move-wide/from16 v4, v19

    .line 212
    .line 213
    iput-wide v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 214
    .line 215
    const/4 v4, 0x0

    .line 216
    iput-object v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 217
    .line 218
    const/4 v5, 0x0

    .line 219
    iput v5, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 220
    .line 221
    iput-object v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    move-object v7, v5

    .line 225
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 226
    .line 227
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v15, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 231
    .line 232
    :goto_6
    iput v9, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 233
    .line 234
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    add-int/lit8 v9, v9, 0x1

    .line 238
    .line 239
    const/4 v15, 0x0

    .line 240
    :goto_7
    iget v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 241
    .line 242
    iget v5, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 243
    .line 244
    if-ne v4, v5, :cond_d

    .line 245
    .line 246
    iget-wide v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 247
    .line 248
    iput-wide v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d:J

    .line 249
    .line 250
    iput v9, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->f:I

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_d
    iget-wide v10, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 254
    .line 255
    move v13, v5

    .line 256
    move v14, v9

    .line 257
    move-wide v11, v10

    .line 258
    :goto_8
    iget-wide v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 259
    .line 260
    const-wide/16 v19, 0x0

    .line 261
    .line 262
    cmp-long v4, v4, v19

    .line 263
    .line 264
    if-eqz v4, :cond_f

    .line 265
    .line 266
    if-nez v15, :cond_e

    .line 267
    .line 268
    new-instance v15, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    :cond_e
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_f
    iput v9, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 278
    .line 279
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    add-int/lit8 v9, v9, 0x1

    .line 283
    .line 284
    :goto_9
    iget-wide v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 285
    .line 286
    add-int/lit8 v8, v8, 0x1

    .line 287
    .line 288
    move-wide/from16 v16, v4

    .line 289
    .line 290
    move-object/from16 v7, v21

    .line 291
    .line 292
    const-wide/16 v4, 0x0

    .line 293
    .line 294
    const/4 v6, 0x0

    .line 295
    const/4 v10, 0x1

    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :cond_10
    iget-wide v4, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d:J

    .line 299
    .line 300
    const-wide/16 v19, 0x0

    .line 301
    .line 302
    cmp-long v4, v4, v19

    .line 303
    .line 304
    if-nez v4, :cond_11

    .line 305
    .line 306
    iput-wide v11, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d:J

    .line 307
    .line 308
    iput v13, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->e:I

    .line 309
    .line 310
    iput v14, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->f:I

    .line 311
    .line 312
    :cond_11
    if-eqz v15, :cond_13

    .line 313
    .line 314
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    const/4 v6, 0x1

    .line 319
    if-ne v4, v6, :cond_12

    .line 320
    .line 321
    const/4 v4, 0x0

    .line 322
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 327
    .line 328
    const-wide/16 v6, 0x0

    .line 329
    .line 330
    iput-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 331
    .line 332
    const/4 v6, 0x0

    .line 333
    iput-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 334
    .line 335
    iput v4, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 336
    .line 337
    iput-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_12
    new-instance v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 341
    .line 342
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    iput-object v15, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 346
    .line 347
    :goto_a
    iput v9, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 348
    .line 349
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    :cond_13
    move-object v8, v2

    .line 353
    goto :goto_c

    .line 354
    :goto_b
    move-object v8, v6

    .line 355
    :goto_c
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->c:Ljava/util/ArrayList;

    .line 356
    .line 357
    iget-object v1, v3, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 358
    .line 359
    if-nez v1, :cond_14

    .line 360
    .line 361
    :goto_d
    return-void

    .line 362
    :cond_14
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3$1;

    .line 363
    .line 364
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    .line 369
    .line 370
    return-void
.end method
