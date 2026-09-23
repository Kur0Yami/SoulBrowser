.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;->f:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;->c:Z

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;->f:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a:Z

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_e

    .line 14
    .line 15
    :cond_0
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 16
    .line 17
    if-ne v5, v2, :cond_2

    .line 18
    .line 19
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;->c:Z

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMain;->J:Ljava/util/List;

    .line 25
    .line 26
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->b:Ljava/util/List;

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
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->b:Ljava/util/List;

    .line 34
    .line 35
    :goto_1
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    goto/16 :goto_e

    .line 40
    .line 41
    :cond_3
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    iput-wide v4, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->d:J

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    iput v6, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e:I

    .line 47
    .line 48
    iput v6, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->f:I

    .line 49
    .line 50
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->b:Ljava/util/List;

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
    goto/16 :goto_c

    .line 62
    .line 63
    :cond_5
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 64
    .line 65
    if-eqz v9, :cond_6

    .line 66
    .line 67
    iget v2, v9, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 68
    .line 69
    iput v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e:I

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
    iput v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e:I

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    sget v2, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 80
    .line 81
    iput v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e:I

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
    new-instance v9, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 89
    .line 90
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v10, 0x1

    .line 94
    iput v10, v9, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 95
    .line 96
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    move-wide v11, v4

    .line 104
    move-wide/from16 v16, v11

    .line 105
    .line 106
    move v9, v6

    .line 107
    move v13, v9

    .line 108
    move v15, v13

    .line 109
    move/from16 v18, v10

    .line 110
    .line 111
    const/4 v14, 0x0

    .line 112
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v19

    .line 116
    if-eqz v19, :cond_f

    .line 117
    .line 118
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v19

    .line 122
    move-object/from16 v8, v19

    .line 123
    .line 124
    check-cast v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 125
    .line 126
    if-nez v8, :cond_8

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    move-wide/from16 v20, v4

    .line 130
    .line 131
    new-instance v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    move-object/from16 v19, v7

    .line 137
    .line 138
    iget-wide v6, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 139
    .line 140
    iput-wide v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 141
    .line 142
    iget-wide v6, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 143
    .line 144
    iput-wide v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 145
    .line 146
    iget-wide v6, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 147
    .line 148
    iput-wide v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 149
    .line 150
    iget-object v5, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 153
    .line 154
    iget v5, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 155
    .line 156
    iput v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 157
    .line 158
    iput v15, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 159
    .line 160
    iget-object v5, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 161
    .line 162
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v5, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 167
    .line 168
    iget-boolean v5, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 169
    .line 170
    iput-boolean v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 171
    .line 172
    iget-object v5, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 173
    .line 174
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 175
    .line 176
    if-eqz v14, :cond_9

    .line 177
    .line 178
    cmp-long v5, v6, v20

    .line 179
    .line 180
    if-eqz v5, :cond_a

    .line 181
    .line 182
    cmp-long v5, v6, v16

    .line 183
    .line 184
    if-eqz v5, :cond_9

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_9
    move/from16 v7, v18

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-ne v5, v10, :cond_b

    .line 195
    .line 196
    const/4 v5, 0x0

    .line 197
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 202
    .line 203
    move-wide/from16 v7, v20

    .line 204
    .line 205
    iput-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 206
    .line 207
    const/4 v7, 0x0

    .line 208
    iput-object v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 209
    .line 210
    iput v5, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 211
    .line 212
    iput-object v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 213
    .line 214
    :goto_5
    move/from16 v7, v18

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_b
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 218
    .line 219
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v14, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :goto_6
    iput v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 226
    .line 227
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    add-int/lit8 v18, v7, 0x1

    .line 231
    .line 232
    move/from16 v7, v18

    .line 233
    .line 234
    const/4 v14, 0x0

    .line 235
    :goto_7
    iget v6, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e:I

    .line 236
    .line 237
    iget v8, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 238
    .line 239
    if-ne v6, v8, :cond_c

    .line 240
    .line 241
    iget-wide v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 242
    .line 243
    iput-wide v5, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->d:J

    .line 244
    .line 245
    iput v7, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->f:I

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_c
    iget-wide v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 249
    .line 250
    move-wide v11, v5

    .line 251
    move v13, v7

    .line 252
    move v9, v8

    .line 253
    :goto_8
    iget-wide v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 254
    .line 255
    const-wide/16 v20, 0x0

    .line 256
    .line 257
    cmp-long v5, v5, v20

    .line 258
    .line 259
    if-eqz v5, :cond_e

    .line 260
    .line 261
    if-nez v14, :cond_d

    .line 262
    .line 263
    new-instance v14, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    :cond_d
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    :goto_9
    move/from16 v18, v7

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_e
    iput v7, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 275
    .line 276
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    add-int/lit8 v7, v7, 0x1

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :goto_a
    iget-wide v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 283
    .line 284
    add-int/lit8 v15, v15, 0x1

    .line 285
    .line 286
    move-wide/from16 v16, v4

    .line 287
    .line 288
    move-object/from16 v7, v19

    .line 289
    .line 290
    const-wide/16 v4, 0x0

    .line 291
    .line 292
    const/4 v6, 0x0

    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    :cond_f
    move/from16 v7, v18

    .line 296
    .line 297
    iget-wide v4, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->d:J

    .line 298
    .line 299
    const-wide/16 v20, 0x0

    .line 300
    .line 301
    cmp-long v4, v4, v20

    .line 302
    .line 303
    if-nez v4, :cond_10

    .line 304
    .line 305
    iput-wide v11, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->d:J

    .line 306
    .line 307
    iput v9, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e:I

    .line 308
    .line 309
    iput v13, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->f:I

    .line 310
    .line 311
    :cond_10
    if-eqz v14, :cond_12

    .line 312
    .line 313
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-ne v4, v10, :cond_11

    .line 318
    .line 319
    const/4 v5, 0x0

    .line 320
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 325
    .line 326
    const-wide/16 v8, 0x0

    .line 327
    .line 328
    iput-wide v8, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 329
    .line 330
    const/4 v6, 0x0

    .line 331
    iput-object v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 332
    .line 333
    iput v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 334
    .line 335
    iput-object v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :cond_11
    new-instance v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 339
    .line 340
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 341
    .line 342
    .line 343
    iput-object v14, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 344
    .line 345
    :goto_b
    iput v7, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 346
    .line 347
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    :cond_12
    move-object v8, v2

    .line 351
    goto :goto_d

    .line 352
    :goto_c
    move-object v8, v6

    .line 353
    :goto_d
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->c:Ljava/util/ArrayList;

    .line 354
    .line 355
    iget-object v1, v3, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 356
    .line 357
    if-nez v1, :cond_13

    .line 358
    .line 359
    :goto_e
    return-void

    .line 360
    :cond_13
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3$1;

    .line 361
    .line 362
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    .line 367
    .line 368
    return-void
.end method
