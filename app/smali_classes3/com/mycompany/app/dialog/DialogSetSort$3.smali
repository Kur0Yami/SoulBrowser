.class Lcom/mycompany/app/dialog/DialogSetSort$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetSort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$3;->a:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogSetSort$3;->a:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 8
    .line 9
    iget v4, v3, Lcom/mycompany/app/dialog/DialogSetSort;->c0:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v6, 0x18

    .line 13
    .line 14
    const/4 v7, 0x3

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x1

    .line 18
    if-eqz v1, :cond_14

    .line 19
    .line 20
    if-eq v1, v10, :cond_10

    .line 21
    .line 22
    if-eq v1, v9, :cond_0

    .line 23
    .line 24
    goto/16 :goto_c

    .line 25
    .line 26
    :cond_0
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogSetSort;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_c

    .line 31
    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iput-object v5, v3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 37
    .line 38
    .line 39
    iput-object v5, v3, Lcom/mycompany/app/dialog/DialogSetSort;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 40
    .line 41
    :cond_2
    if-eqz v0, :cond_21

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto/16 :goto_c

    .line 48
    .line 49
    :cond_3
    if-eq v4, v10, :cond_d

    .line 50
    .line 51
    if-ne v4, v9, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    if-ne v4, v7, :cond_5

    .line 55
    .line 56
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->q0:[I

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_5
    const/16 v1, 0xe

    .line 60
    .line 61
    if-eq v4, v1, :cond_c

    .line 62
    .line 63
    const/16 v1, 0xf

    .line 64
    .line 65
    if-eq v4, v1, :cond_c

    .line 66
    .line 67
    const/16 v1, 0x10

    .line 68
    .line 69
    if-ne v4, v1, :cond_6

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    const/16 v1, 0x20

    .line 73
    .line 74
    if-ne v4, v1, :cond_7

    .line 75
    .line 76
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->s0:[I

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_7
    const/16 v1, 0x13

    .line 80
    .line 81
    if-eq v4, v1, :cond_b

    .line 82
    .line 83
    const/16 v1, 0x14

    .line 84
    .line 85
    if-eq v4, v1, :cond_b

    .line 86
    .line 87
    const/16 v1, 0x15

    .line 88
    .line 89
    if-eq v4, v1, :cond_b

    .line 90
    .line 91
    const/16 v1, 0x16

    .line 92
    .line 93
    if-eq v4, v1, :cond_b

    .line 94
    .line 95
    const/16 v1, 0x17

    .line 96
    .line 97
    if-eq v4, v1, :cond_b

    .line 98
    .line 99
    const/16 v1, 0x1a

    .line 100
    .line 101
    if-eq v4, v1, :cond_b

    .line 102
    .line 103
    const/16 v1, 0x1c

    .line 104
    .line 105
    if-eq v4, v1, :cond_b

    .line 106
    .line 107
    const/16 v1, 0x1d

    .line 108
    .line 109
    if-eq v4, v1, :cond_b

    .line 110
    .line 111
    const/16 v1, 0x1e

    .line 112
    .line 113
    if-ne v4, v1, :cond_8

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    if-ne v4, v6, :cond_9

    .line 117
    .line 118
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->u0:[I

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_9
    const/16 v1, 0x1f

    .line 122
    .line 123
    if-ne v4, v1, :cond_a

    .line 124
    .line 125
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->v0:[I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_a
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->w0:[I

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_b
    :goto_0
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->t0:[I

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_c
    :goto_1
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->r0:[I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_d
    :goto_2
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->p0:[I

    .line 138
    .line 139
    :goto_3
    new-instance v15, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    array-length v4, v1

    .line 145
    move v5, v8

    .line 146
    :goto_4
    if-ge v5, v4, :cond_f

    .line 147
    .line 148
    aget v6, v1, v5

    .line 149
    .line 150
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 151
    .line 152
    sget-object v9, Lcom/mycompany/app/dialog/DialogSetSort;->o0:[I

    .line 153
    .line 154
    aget v9, v9, v6

    .line 155
    .line 156
    iget v11, v3, Lcom/mycompany/app/dialog/DialogSetSort;->e0:I

    .line 157
    .line 158
    if-ne v6, v11, :cond_e

    .line 159
    .line 160
    move v6, v10

    .line 161
    goto :goto_5

    .line 162
    :cond_e
    move v6, v8

    .line 163
    :goto_5
    invoke-direct {v7, v5, v9, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_f
    new-instance v11, Lcom/mycompany/app/view/MyPopupMenu;

    .line 173
    .line 174
    iget-object v12, v3, Lcom/mycompany/app/dialog/DialogSetSort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 175
    .line 176
    iget-object v13, v3, Lcom/mycompany/app/dialog/DialogSetSort;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 177
    .line 178
    iget-object v14, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 179
    .line 180
    sget-boolean v16, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 181
    .line 182
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetSort$8;

    .line 183
    .line 184
    invoke-direct {v0, v3, v1, v4}, Lcom/mycompany/app/dialog/DialogSetSort$8;-><init>(Lcom/mycompany/app/dialog/DialogSetSort;[II)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v17, v0

    .line 188
    .line 189
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 190
    .line 191
    .line 192
    iput-object v11, v3, Lcom/mycompany/app/dialog/DialogSetSort;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 193
    .line 194
    iput-object v11, v3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 195
    .line 196
    return-void

    .line 197
    :cond_10
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogSetSort;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 198
    .line 199
    if-eqz v1, :cond_11

    .line 200
    .line 201
    goto/16 :goto_c

    .line 202
    .line 203
    :cond_11
    if-eqz v1, :cond_12

    .line 204
    .line 205
    iput-object v5, v3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 208
    .line 209
    .line 210
    iput-object v5, v3, Lcom/mycompany/app/dialog/DialogSetSort;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 211
    .line 212
    :cond_12
    if-eqz v0, :cond_21

    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 215
    .line 216
    if-nez v1, :cond_13

    .line 217
    .line 218
    goto/16 :goto_c

    .line 219
    .line 220
    :cond_13
    new-instance v15, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 226
    .line 227
    sget v4, Lnet/kaki87/soul2/testing/R$string;->order_ascend:I

    .line 228
    .line 229
    iget-boolean v5, v3, Lcom/mycompany/app/dialog/DialogSetSort;->g0:Z

    .line 230
    .line 231
    xor-int/2addr v5, v10

    .line 232
    invoke-direct {v1, v8, v4, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 239
    .line 240
    sget v4, Lnet/kaki87/soul2/testing/R$string;->order_descend:I

    .line 241
    .line 242
    iget-boolean v5, v3, Lcom/mycompany/app/dialog/DialogSetSort;->g0:Z

    .line 243
    .line 244
    invoke-direct {v1, v10, v4, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    new-instance v11, Lcom/mycompany/app/view/MyPopupMenu;

    .line 251
    .line 252
    iget-object v12, v3, Lcom/mycompany/app/dialog/DialogSetSort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 253
    .line 254
    iget-object v13, v3, Lcom/mycompany/app/dialog/DialogSetSort;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 255
    .line 256
    iget-object v14, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 257
    .line 258
    sget-boolean v16, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 259
    .line 260
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetSort$7;

    .line 261
    .line 262
    invoke-direct {v0, v3}, Lcom/mycompany/app/dialog/DialogSetSort$7;-><init>(Lcom/mycompany/app/dialog/DialogSetSort;)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v17, v0

    .line 266
    .line 267
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 268
    .line 269
    .line 270
    iput-object v11, v3, Lcom/mycompany/app/dialog/DialogSetSort;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 271
    .line 272
    iput-object v11, v3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 273
    .line 274
    return-void

    .line 275
    :cond_14
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogSetSort;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 276
    .line 277
    if-eqz v1, :cond_15

    .line 278
    .line 279
    goto/16 :goto_c

    .line 280
    .line 281
    :cond_15
    if-eqz v1, :cond_16

    .line 282
    .line 283
    iput-object v5, v3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 286
    .line 287
    .line 288
    iput-object v5, v3, Lcom/mycompany/app/dialog/DialogSetSort;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 289
    .line 290
    :cond_16
    if-eqz v0, :cond_21

    .line 291
    .line 292
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 293
    .line 294
    if-nez v1, :cond_17

    .line 295
    .line 296
    goto/16 :goto_c

    .line 297
    .line 298
    :cond_17
    new-instance v15, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .line 302
    .line 303
    if-nez v4, :cond_18

    .line 304
    .line 305
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->y0:[I

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_18
    if-eq v4, v10, :cond_1e

    .line 309
    .line 310
    if-ne v4, v9, :cond_19

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_19
    if-eq v4, v7, :cond_1d

    .line 314
    .line 315
    const/16 v1, 0xd

    .line 316
    .line 317
    if-ne v4, v1, :cond_1a

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_1a
    const/16 v1, 0x19

    .line 321
    .line 322
    if-eq v4, v1, :cond_1c

    .line 323
    .line 324
    if-ne v4, v6, :cond_1b

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_1b
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->C0:[I

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_1c
    :goto_6
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->B0:[I

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_1d
    :goto_7
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->A0:[I

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_1e
    :goto_8
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->z0:[I

    .line 337
    .line 338
    :goto_9
    array-length v4, v1

    .line 339
    move v5, v8

    .line 340
    :goto_a
    if-ge v5, v4, :cond_20

    .line 341
    .line 342
    aget v6, v1, v5

    .line 343
    .line 344
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 345
    .line 346
    sget-object v9, Lcom/mycompany/app/dialog/DialogSetSort;->x0:[I

    .line 347
    .line 348
    aget v9, v9, v6

    .line 349
    .line 350
    iget v11, v3, Lcom/mycompany/app/dialog/DialogSetSort;->f0:I

    .line 351
    .line 352
    if-ne v6, v11, :cond_1f

    .line 353
    .line 354
    move v6, v10

    .line 355
    goto :goto_b

    .line 356
    :cond_1f
    move v6, v8

    .line 357
    :goto_b
    invoke-direct {v7, v5, v9, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    add-int/lit8 v5, v5, 0x1

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_20
    new-instance v11, Lcom/mycompany/app/view/MyPopupMenu;

    .line 367
    .line 368
    iget-object v12, v3, Lcom/mycompany/app/dialog/DialogSetSort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 369
    .line 370
    iget-object v13, v3, Lcom/mycompany/app/dialog/DialogSetSort;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 371
    .line 372
    iget-object v14, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 373
    .line 374
    sget-boolean v16, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 375
    .line 376
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetSort$6;

    .line 377
    .line 378
    invoke-direct {v0, v3, v1, v4}, Lcom/mycompany/app/dialog/DialogSetSort$6;-><init>(Lcom/mycompany/app/dialog/DialogSetSort;[II)V

    .line 379
    .line 380
    .line 381
    move-object/from16 v17, v0

    .line 382
    .line 383
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 384
    .line 385
    .line 386
    iput-object v11, v3, Lcom/mycompany/app/dialog/DialogSetSort;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 387
    .line 388
    iput-object v11, v3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 389
    .line 390
    :cond_21
    :goto_c
    return-void
.end method
