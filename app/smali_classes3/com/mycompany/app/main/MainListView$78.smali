.class Lcom/mycompany/app/main/MainListView$78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$78;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$78;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->D()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView$78;->a:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x3

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x4

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x1

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :pswitch_0
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->J0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 39
    .line 40
    .line 41
    iput-object v5, v2, Lcom/mycompany/app/main/MainListView;->J0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 42
    .line 43
    :cond_2
    new-instance v11, Lcom/mycompany/app/dialog/DialogWebView;

    .line 44
    .line 45
    iget-object v12, v2, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 46
    .line 47
    new-instance v1, Lcom/mycompany/app/main/MainListView$104;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/mycompany/app/main/MainListView$104;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 50
    .line 51
    .line 52
    const-string v13, "https://help.adblockplus.org/hc/en-us/articles/360062733293-How-to-write-filters#basic"

    .line 53
    .line 54
    const/4 v15, 0x0

    .line 55
    const/16 v16, 0x2

    .line 56
    .line 57
    move-object v14, v13

    .line 58
    move-object/from16 v17, v1

    .line 59
    .line 60
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 61
    .line 62
    .line 63
    iput-object v11, v2, Lcom/mycompany/app/main/MainListView;->J0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 64
    .line 65
    new-instance v1, Lcom/mycompany/app/main/MainListView$105;

    .line 66
    .line 67
    invoke-direct {v1, v2}, Lcom/mycompany/app/main/MainListView$105;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    .line 72
    .line 73
    return v10

    .line 74
    :pswitch_1
    if-nez v4, :cond_3

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_3
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_4
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->G0:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekFilter;->dismiss()V

    .line 91
    .line 92
    .line 93
    iput-object v5, v2, Lcom/mycompany/app/main/MainListView;->G0:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 94
    .line 95
    :cond_5
    iget v1, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 96
    .line 97
    const/16 v3, 0x1b

    .line 98
    .line 99
    if-ne v1, v3, :cond_6

    .line 100
    .line 101
    move v9, v10

    .line 102
    :cond_6
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 103
    .line 104
    invoke-direct {v1, v4, v9}, Lcom/mycompany/app/dialog/DialogSeekFilter;-><init>(Landroid/app/Activity;Z)V

    .line 105
    .line 106
    .line 107
    iput-object v1, v2, Lcom/mycompany/app/main/MainListView;->G0:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 108
    .line 109
    new-instance v3, Lcom/mycompany/app/main/MainListView$99;

    .line 110
    .line 111
    invoke-direct {v3, v2}, Lcom/mycompany/app/main/MainListView$99;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    .line 116
    .line 117
    return v10

    .line 118
    :pswitch_2
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 119
    .line 120
    if-eqz v1, :cond_19

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListListener;->j()V

    .line 123
    .line 124
    .line 125
    return v10

    .line 126
    :pswitch_3
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 127
    .line 128
    if-eqz v1, :cond_19

    .line 129
    .line 130
    invoke-virtual {v1, v9}, Lcom/mycompany/app/main/MainListListener;->n(Z)V

    .line 131
    .line 132
    .line 133
    return v10

    .line 134
    :pswitch_4
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 135
    .line 136
    if-eqz v1, :cond_19

    .line 137
    .line 138
    invoke-virtual {v1, v10}, Lcom/mycompany/app/main/MainListListener;->n(Z)V

    .line 139
    .line 140
    .line 141
    return v10

    .line 142
    :pswitch_5
    if-nez v4, :cond_7

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_7
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_8
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->B()V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 158
    .line 159
    new-instance v3, Lcom/mycompany/app/main/MainListView$118;

    .line 160
    .line 161
    invoke-direct {v3, v2}, Lcom/mycompany/app/main/MainListView$118;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/dialog/DialogSetHistory;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetHistory$SetHistoryListener;)V

    .line 165
    .line 166
    .line 167
    iput-object v1, v2, Lcom/mycompany/app/main/MainListView;->Q0:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 168
    .line 169
    new-instance v3, Lcom/mycompany/app/main/MainListView$119;

    .line 170
    .line 171
    invoke-direct {v3, v2}, Lcom/mycompany/app/main/MainListView$119;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    .line 176
    .line 177
    iput-boolean v9, v2, Lcom/mycompany/app/main/MainListView;->R0:Z

    .line 178
    .line 179
    return v10

    .line 180
    :pswitch_6
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 181
    .line 182
    if-eqz v1, :cond_19

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListListener;->r()V

    .line 185
    .line 186
    .line 187
    return v10

    .line 188
    :pswitch_7
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 189
    .line 190
    if-nez v4, :cond_9

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_9
    iget v2, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 195
    .line 196
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    xor-int/2addr v1, v10

    .line 201
    const-string v4, "mAlbumContinue"

    .line 202
    .line 203
    if-ne v2, v10, :cond_a

    .line 204
    .line 205
    sput-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 206
    .line 207
    invoke-static {v8, v3, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    .line 209
    .line 210
    return v10

    .line 211
    :cond_a
    if-ne v2, v7, :cond_b

    .line 212
    .line 213
    sput-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 214
    .line 215
    invoke-static {v8, v3, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    return v10

    .line 219
    :cond_b
    if-ne v2, v6, :cond_19

    .line 220
    .line 221
    sput-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 222
    .line 223
    invoke-static {v8, v3, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 224
    .line 225
    .line 226
    return v10

    .line 227
    :pswitch_8
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 228
    .line 229
    if-nez v4, :cond_c

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_c
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 234
    .line 235
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    xor-int/2addr v1, v10

    .line 240
    invoke-static {v3, v5, v1}, Lcom/mycompany/app/pref/PrefUtil;->h(Landroid/content/Context;IZ)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 244
    .line 245
    if-nez v1, :cond_d

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_d
    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v9}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 253
    .line 254
    .line 255
    return v10

    .line 256
    :pswitch_9
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 257
    .line 258
    if-nez v4, :cond_e

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_e
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 263
    .line 264
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    xor-int/2addr v1, v10

    .line 269
    invoke-static {v3, v5, v1}, Lcom/mycompany/app/pref/PrefUtil;->g(Landroid/content/Context;IZ)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 273
    .line 274
    if-nez v1, :cond_f

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_f
    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v9}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 282
    .line 283
    .line 284
    return v10

    .line 285
    :pswitch_a
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 286
    .line 287
    if-nez v4, :cond_10

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_10
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    xor-int/lit8 v4, v1, 0x1

    .line 295
    .line 296
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 297
    .line 298
    const-string v11, "mAlbumRecent"

    .line 299
    .line 300
    if-ne v5, v10, :cond_11

    .line 301
    .line 302
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->p:Z

    .line 303
    .line 304
    invoke-static {v8, v3, v11, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_11
    if-ne v5, v7, :cond_12

    .line 309
    .line 310
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->p:Z

    .line 311
    .line 312
    invoke-static {v8, v3, v11, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 313
    .line 314
    .line 315
    goto :goto_0

    .line 316
    :cond_12
    if-ne v5, v6, :cond_13

    .line 317
    .line 318
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->p:Z

    .line 319
    .line 320
    invoke-static {v8, v3, v11, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    :cond_13
    :goto_0
    if-nez v1, :cond_14

    .line 324
    .line 325
    invoke-virtual {v2, v9}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 326
    .line 327
    .line 328
    iget v1, v2, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 329
    .line 330
    invoke-virtual {v2, v1, v10}, Lcom/mycompany/app/main/MainListView;->g0(IZ)Z

    .line 331
    .line 332
    .line 333
    return v10

    .line 334
    :cond_14
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 335
    .line 336
    if-nez v1, :cond_15

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_15
    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v9}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 343
    .line 344
    .line 345
    return v10

    .line 346
    :pswitch_b
    if-nez v4, :cond_16

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_16
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_17

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :cond_17
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->w0:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 357
    .line 358
    if-eqz v1, :cond_18

    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSetSort;->dismiss()V

    .line 361
    .line 362
    .line 363
    iput-object v5, v2, Lcom/mycompany/app/main/MainListView;->w0:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 364
    .line 365
    :cond_18
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetSort;

    .line 366
    .line 367
    iget v3, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 368
    .line 369
    new-instance v5, Lcom/mycompany/app/main/MainListView$87;

    .line 370
    .line 371
    invoke-direct {v5, v2}, Lcom/mycompany/app/main/MainListView$87;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 372
    .line 373
    .line 374
    invoke-direct {v1, v4, v3, v5}, Lcom/mycompany/app/dialog/DialogSetSort;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 375
    .line 376
    .line 377
    iput-object v1, v2, Lcom/mycompany/app/main/MainListView;->w0:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 378
    .line 379
    new-instance v3, Lcom/mycompany/app/main/MainListView$88;

    .line 380
    .line 381
    invoke-direct {v3, v2}, Lcom/mycompany/app/main/MainListView$88;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 385
    .line 386
    .line 387
    return v10

    .line 388
    :pswitch_c
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 389
    .line 390
    if-eqz v1, :cond_19

    .line 391
    .line 392
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListListener;->s()V

    .line 393
    .line 394
    .line 395
    :cond_19
    :goto_1
    return v10

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
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
