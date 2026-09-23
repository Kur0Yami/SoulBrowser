.class Lcom/mycompany/app/main/MainListView$80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final synthetic b:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$80;->b:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView$80;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$80;->b:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$80;->b:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 8
    .line 9
    const/16 v4, 0x24

    .line 10
    .line 11
    const/16 v5, 0x23

    .line 12
    .line 13
    const/16 v6, 0x1b

    .line 14
    .line 15
    const-string v7, "sb_user_filter_path"

    .line 16
    .line 17
    const/16 v8, 0x19

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x1

    .line 22
    iget-object v12, v0, Lcom/mycompany/app/main/MainListView$80;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 23
    .line 24
    packed-switch p2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    return v9

    .line 28
    :pswitch_0
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainListView;->i(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 29
    .line 30
    .line 31
    return v11

    .line 32
    :pswitch_1
    iget-object v15, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    sget v1, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 41
    .line 42
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    return v11

    .line 46
    :cond_0
    const-string v2, "file:///android_asset/shortcut.html"

    .line 47
    .line 48
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 55
    .line 56
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 57
    .line 58
    .line 59
    return v11

    .line 60
    :cond_1
    invoke-static {v3, v15}, Lcom/mycompany/app/main/MainUtil;->I4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_2
    if-nez v3, :cond_3

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->O0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 85
    .line 86
    .line 87
    iput-object v10, v1, Lcom/mycompany/app/main/MainListView;->O0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 88
    .line 89
    :cond_5
    iput-object v15, v1, Lcom/mycompany/app/main/MainListView;->G1:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 92
    .line 93
    .line 94
    move-result v17

    .line 95
    new-instance v13, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 96
    .line 97
    iget-object v14, v1, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 98
    .line 99
    new-instance v2, Lcom/mycompany/app/main/MainListView$115;

    .line 100
    .line 101
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/MainListView$115;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 102
    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    const/16 v20, 0x0

    .line 111
    .line 112
    move-object/from16 v21, v2

    .line 113
    .line 114
    invoke-direct/range {v13 .. v21}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v13, v1, Lcom/mycompany/app/main/MainListView;->O0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 118
    .line 119
    new-instance v2, Lcom/mycompany/app/main/MainListView$116;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/MainListView$116;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v13, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    .line 126
    .line 127
    return v11

    .line 128
    :pswitch_2
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 129
    .line 130
    if-eqz v2, :cond_17

    .line 131
    .line 132
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 133
    .line 134
    if-nez v2, :cond_6

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_6
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListListener;->k(Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    return v11

    .line 162
    :pswitch_3
    iget v9, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 163
    .line 164
    if-ne v9, v8, :cond_a

    .line 165
    .line 166
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_8

    .line 173
    .line 174
    iget-object v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 175
    .line 176
    const-wide/16 v4, 0x0

    .line 177
    .line 178
    invoke-virtual {v1, v4, v5, v11}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 179
    .line 180
    .line 181
    iput-object v3, v1, Lcom/mycompany/app/main/MainListView;->A1:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v3, Lcom/mycompany/app/main/MainListView$82;

    .line 184
    .line 185
    invoke-direct {v3, v1}, Lcom/mycompany/app/main/MainListView$82;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    return v11

    .line 192
    :cond_8
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_9

    .line 199
    .line 200
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_17

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 211
    .line 212
    .line 213
    return v11

    .line 214
    :cond_9
    iget v2, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 215
    .line 216
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v2, v3, v4, v5, v10}, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_17

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 227
    .line 228
    .line 229
    return v11

    .line 230
    :cond_a
    if-ne v9, v6, :cond_b

    .line 231
    .line 232
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_17

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 243
    .line 244
    .line 245
    return v11

    .line 246
    :cond_b
    const/16 v2, 0x12

    .line 247
    .line 248
    if-eq v9, v2, :cond_d

    .line 249
    .line 250
    if-eq v9, v5, :cond_d

    .line 251
    .line 252
    if-ne v9, v4, :cond_c

    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_c
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v9, v3, v2, v4, v5}, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_17

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 270
    .line 271
    .line 272
    return v11

    .line 273
    :cond_d
    :goto_0
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_17

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 284
    .line 285
    .line 286
    return v11

    .line 287
    :pswitch_4
    iget v2, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 288
    .line 289
    const/16 v3, 0x13

    .line 290
    .line 291
    if-eq v2, v3, :cond_13

    .line 292
    .line 293
    const/16 v3, 0x14

    .line 294
    .line 295
    if-eq v2, v3, :cond_13

    .line 296
    .line 297
    const/16 v3, 0x15

    .line 298
    .line 299
    if-eq v2, v3, :cond_13

    .line 300
    .line 301
    const/16 v3, 0x16

    .line 302
    .line 303
    if-eq v2, v3, :cond_13

    .line 304
    .line 305
    const/16 v3, 0x17

    .line 306
    .line 307
    if-eq v2, v3, :cond_13

    .line 308
    .line 309
    const/16 v3, 0x1c

    .line 310
    .line 311
    if-eq v2, v3, :cond_13

    .line 312
    .line 313
    const/16 v3, 0x1d

    .line 314
    .line 315
    if-eq v2, v3, :cond_13

    .line 316
    .line 317
    const/16 v3, 0x1e

    .line 318
    .line 319
    if-ne v2, v3, :cond_e

    .line 320
    .line 321
    goto :goto_1

    .line 322
    :cond_e
    if-ne v2, v8, :cond_10

    .line 323
    .line 324
    iget-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_f

    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->u0()V

    .line 333
    .line 334
    .line 335
    return v11

    .line 336
    :cond_f
    invoke-virtual {v1, v12}, Lcom/mycompany/app/main/MainListView;->t0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 337
    .line 338
    .line 339
    return v11

    .line 340
    :cond_10
    if-ne v2, v5, :cond_11

    .line 341
    .line 342
    invoke-virtual {v1, v12, v10}, Lcom/mycompany/app/main/MainListView;->s0(Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 343
    .line 344
    .line 345
    return v11

    .line 346
    :cond_11
    const/16 v3, 0x18

    .line 347
    .line 348
    if-eq v2, v3, :cond_12

    .line 349
    .line 350
    if-ne v2, v4, :cond_17

    .line 351
    .line 352
    :cond_12
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainListView;->g(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 353
    .line 354
    .line 355
    return v11

    .line 356
    :cond_13
    :goto_1
    invoke-virtual {v1, v12}, Lcom/mycompany/app/main/MainListView;->t0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 357
    .line 358
    .line 359
    return v11

    .line 360
    :pswitch_5
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainListView;->h(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 361
    .line 362
    .line 363
    return v11

    .line 364
    :pswitch_6
    new-instance v2, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    invoke-static {v1, v2, v10, v9}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 373
    .line 374
    .line 375
    return v11

    .line 376
    :pswitch_7
    new-instance v2, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    iget-boolean v3, v1, Lcom/mycompany/app/main/MainListView;->e:Z

    .line 385
    .line 386
    if-eqz v3, :cond_14

    .line 387
    .line 388
    invoke-static {v1, v2, v10, v11}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 389
    .line 390
    .line 391
    return v11

    .line 392
    :cond_14
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainListView;->f(Lcom/mycompany/app/main/MainListView;Ljava/util/List;)V

    .line 393
    .line 394
    .line 395
    return v11

    .line 396
    :pswitch_8
    iget v1, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 397
    .line 398
    const/16 v2, 0x20

    .line 399
    .line 400
    const-string v4, "Copied URL"

    .line 401
    .line 402
    if-ne v1, v2, :cond_15

    .line 403
    .line 404
    iget-object v1, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    sget v2, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 411
    .line 412
    invoke-static {v2, v3, v4, v1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    return v11

    .line 416
    :cond_15
    iget-object v1, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 417
    .line 418
    sget v2, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 419
    .line 420
    invoke-static {v2, v3, v4, v1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return v11

    .line 424
    :pswitch_9
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 425
    .line 426
    if-eqz v1, :cond_17

    .line 427
    .line 428
    const/4 v2, 0x5

    .line 429
    invoke-virtual {v1, v2, v12}, Lcom/mycompany/app/main/MainListListener;->p(ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 430
    .line 431
    .line 432
    return v11

    .line 433
    :pswitch_a
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 434
    .line 435
    if-eqz v1, :cond_17

    .line 436
    .line 437
    const/4 v2, 0x4

    .line 438
    invoke-virtual {v1, v2, v12}, Lcom/mycompany/app/main/MainListListener;->p(ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 439
    .line 440
    .line 441
    return v11

    .line 442
    :pswitch_b
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 443
    .line 444
    if-eqz v1, :cond_17

    .line 445
    .line 446
    const/4 v2, 0x3

    .line 447
    invoke-virtual {v1, v2, v12}, Lcom/mycompany/app/main/MainListListener;->p(ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 448
    .line 449
    .line 450
    return v11

    .line 451
    :pswitch_c
    if-nez v3, :cond_16

    .line 452
    .line 453
    goto :goto_2

    .line 454
    :cond_16
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    const-string v2, "EXTRA_PATH"

    .line 459
    .line 460
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    .line 464
    .line 465
    const/high16 v2, 0x4000000

    .line 466
    .line 467
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 471
    .line 472
    .line 473
    return v11

    .line 474
    :pswitch_d
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 475
    .line 476
    if-eqz v1, :cond_17

    .line 477
    .line 478
    invoke-virtual {v1, v12}, Lcom/mycompany/app/main/MainListListener;->h(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 479
    .line 480
    .line 481
    return v11

    .line 482
    :pswitch_e
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 483
    .line 484
    if-eqz v1, :cond_17

    .line 485
    .line 486
    invoke-virtual {v1, v12}, Lcom/mycompany/app/main/MainListListener;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 487
    .line 488
    .line 489
    :cond_17
    :goto_2
    return v11

    .line 490
    :pswitch_f
    iget v2, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 491
    .line 492
    if-ne v2, v6, :cond_18

    .line 493
    .line 494
    invoke-virtual {v1, v10, v12, v10}, Lcom/mycompany/app/main/MainListView;->w0(Ljava/util/List;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return v11

    .line 498
    :cond_18
    iget-object v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 499
    .line 500
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 501
    .line 502
    iget-wide v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 503
    .line 504
    const/4 v2, 0x0

    .line 505
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/main/MainListView;->j(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 506
    .line 507
    .line 508
    return v11

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
