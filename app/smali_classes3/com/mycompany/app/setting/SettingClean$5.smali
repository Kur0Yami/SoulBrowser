.class Lcom/mycompany/app/setting/SettingClean$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$5;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 8

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingClean$5;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    const/16 v0, 0xe

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    packed-switch p2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    goto/16 :goto_8

    .line 15
    .line 16
    :pswitch_1
    const/16 p1, 0x17

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingClean;->T0(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 33
    .line 34
    .line 35
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 36
    .line 37
    :cond_1
    if-eqz p1, :cond_17

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 40
    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_2
    iput-boolean v3, v1, Lcom/mycompany/app/setting/SettingClean;->t2:Z

    .line 46
    .line 47
    move p2, v4

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object p3, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 54
    .line 55
    array-length p3, p3

    .line 56
    move p4, v3

    .line 57
    :goto_0
    if-ge p4, p3, :cond_4

    .line 58
    .line 59
    sget-object v0, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 60
    .line 61
    aget v0, v0, p4

    .line 62
    .line 63
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 64
    .line 65
    sget-object v5, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 66
    .line 67
    aget v5, v5, v0

    .line 68
    .line 69
    sget v6, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 70
    .line 71
    if-ne v6, v0, :cond_3

    .line 72
    .line 73
    move v0, p2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v0, v3

    .line 76
    :goto_1
    invoke-direct {v2, p4, v5, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 p4, p4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 86
    .line 87
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 90
    .line 91
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 92
    .line 93
    new-instance v6, Lcom/mycompany/app/setting/SettingClean$16;

    .line 94
    .line 95
    invoke-direct {v6, v1, p3}, Lcom/mycompany/app/setting/SettingClean$16;-><init>(Lcom/mycompany/app/setting/SettingClean;I)V

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 102
    .line 103
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_3
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 107
    .line 108
    if-nez p1, :cond_7

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingClean;->S0()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_5
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingClean;->u2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 123
    .line 124
    .line 125
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingClean;->u2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 126
    .line 127
    :cond_6
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 128
    .line 129
    sget p2, Lnet/kaki87/soul2/testing/R$string;->password_lock_1:I

    .line 130
    .line 131
    invoke-direct {p1, v1, p2, v3, p4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingClean;->u2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 135
    .line 136
    new-instance p2, Lcom/mycompany/app/setting/SettingClean$17;

    .line 137
    .line 138
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingClean$17;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_7
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string p2, "EXTRA_PASS"

    .line 152
    .line 153
    const/4 p3, 0x2

    .line 154
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    const-string p2, "EXTRA_TYPE"

    .line 158
    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p1, p3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :pswitch_4
    move p2, v4

    .line 167
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 168
    .line 169
    if-eqz p3, :cond_8

    .line 170
    .line 171
    goto/16 :goto_8

    .line 172
    .line 173
    :cond_8
    if-eqz p3, :cond_9

    .line 174
    .line 175
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 178
    .line 179
    .line 180
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 181
    .line 182
    :cond_9
    if-eqz p1, :cond_17

    .line 183
    .line 184
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 185
    .line 186
    if-nez p3, :cond_a

    .line 187
    .line 188
    goto/16 :goto_8

    .line 189
    .line 190
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    move p3, v3

    .line 196
    :goto_2
    if-ge p3, v2, :cond_c

    .line 197
    .line 198
    sget-object p4, Lcom/mycompany/app/setting/SettingClean;->C2:[I

    .line 199
    .line 200
    aget p4, p4, p3

    .line 201
    .line 202
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 203
    .line 204
    sget-object v5, Lcom/mycompany/app/setting/SettingClean;->B2:[I

    .line 205
    .line 206
    aget v5, v5, p4

    .line 207
    .line 208
    sget v6, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 209
    .line 210
    if-ne v6, p4, :cond_b

    .line 211
    .line 212
    move p4, p2

    .line 213
    goto :goto_3

    .line 214
    :cond_b
    move p4, v3

    .line 215
    :goto_3
    invoke-direct {v0, p3, v5, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    add-int/lit8 p3, p3, 0x1

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_c
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 225
    .line 226
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 227
    .line 228
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 229
    .line 230
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 231
    .line 232
    new-instance v6, Lcom/mycompany/app/setting/SettingClean$15;

    .line 233
    .line 234
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingClean$15;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 235
    .line 236
    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 238
    .line 239
    .line 240
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 241
    .line 242
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_5
    const/16 p1, 0x15

    .line 246
    .line 247
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingClean;->T0(I)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_6
    move p2, v4

    .line 252
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingClean;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 253
    .line 254
    if-eqz p3, :cond_d

    .line 255
    .line 256
    goto/16 :goto_8

    .line 257
    .line 258
    :cond_d
    if-eqz p3, :cond_e

    .line 259
    .line 260
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 261
    .line 262
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 263
    .line 264
    .line 265
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingClean;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 266
    .line 267
    :cond_e
    if-eqz p1, :cond_17

    .line 268
    .line 269
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 270
    .line 271
    if-nez p3, :cond_f

    .line 272
    .line 273
    goto/16 :goto_8

    .line 274
    .line 275
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    move p3, v3

    .line 281
    :goto_4
    const/4 p4, 0x4

    .line 282
    if-ge p3, p4, :cond_11

    .line 283
    .line 284
    sget-object p4, Lcom/mycompany/app/setting/SettingClean;->A2:[I

    .line 285
    .line 286
    aget p4, p4, p3

    .line 287
    .line 288
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 289
    .line 290
    sget-object v2, Lcom/mycompany/app/setting/SettingClean;->y2:[I

    .line 291
    .line 292
    aget v2, v2, p4

    .line 293
    .line 294
    sget v5, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 295
    .line 296
    if-ne v5, p4, :cond_10

    .line 297
    .line 298
    move p4, p2

    .line 299
    goto :goto_5

    .line 300
    :cond_10
    move p4, v3

    .line 301
    :goto_5
    invoke-direct {v0, p3, v2, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    add-int/lit8 p3, p3, 0x1

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_11
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 311
    .line 312
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 313
    .line 314
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 315
    .line 316
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 317
    .line 318
    new-instance v6, Lcom/mycompany/app/setting/SettingClean$14;

    .line 319
    .line 320
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingClean$14;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 321
    .line 322
    .line 323
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 324
    .line 325
    .line 326
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingClean;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 327
    .line 328
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_7
    const/16 p1, 0x14

    .line 332
    .line 333
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingClean;->T0(I)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_8
    move p2, v4

    .line 338
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingClean;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 339
    .line 340
    if-eqz p3, :cond_12

    .line 341
    .line 342
    goto/16 :goto_8

    .line 343
    .line 344
    :cond_12
    if-eqz p3, :cond_13

    .line 345
    .line 346
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 347
    .line 348
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 349
    .line 350
    .line 351
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingClean;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 352
    .line 353
    :cond_13
    if-eqz p1, :cond_17

    .line 354
    .line 355
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 356
    .line 357
    if-nez p3, :cond_14

    .line 358
    .line 359
    goto/16 :goto_8

    .line 360
    .line 361
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .line 365
    .line 366
    move p3, v3

    .line 367
    :goto_6
    if-ge p3, v2, :cond_16

    .line 368
    .line 369
    sget-object p4, Lcom/mycompany/app/setting/SettingClean;->x2:[I

    .line 370
    .line 371
    aget p4, p4, p3

    .line 372
    .line 373
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 374
    .line 375
    sget-object v5, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 376
    .line 377
    aget v5, v5, p4

    .line 378
    .line 379
    sget v6, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 380
    .line 381
    if-ne v6, p4, :cond_15

    .line 382
    .line 383
    move p4, p2

    .line 384
    goto :goto_7

    .line 385
    :cond_15
    move p4, v3

    .line 386
    :goto_7
    invoke-direct {v0, p3, v5, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    add-int/lit8 p3, p3, 0x1

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_16
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 396
    .line 397
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 398
    .line 399
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 400
    .line 401
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 402
    .line 403
    new-instance v6, Lcom/mycompany/app/setting/SettingClean$13;

    .line 404
    .line 405
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingClean$13;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 406
    .line 407
    .line 408
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 409
    .line 410
    .line 411
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingClean;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 412
    .line 413
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 414
    .line 415
    return-void

    .line 416
    :pswitch_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 417
    .line 418
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 419
    .line 420
    const-string p2, "mAreaBlock"

    .line 421
    .line 422
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :pswitch_a
    const/16 p1, 0x13

    .line 427
    .line 428
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingClean;->T0(I)V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :pswitch_b
    const/16 p1, 0x19

    .line 433
    .line 434
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingClean;->T0(I)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :pswitch_c
    sput-boolean p3, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 439
    .line 440
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 441
    .line 442
    const/16 p2, 0xc

    .line 443
    .line 444
    const-string p4, "mCheckEle3"

    .line 445
    .line 446
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_d
    move p2, v4

    .line 451
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 452
    .line 453
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 454
    .line 455
    const-string p4, "mAdsBlock"

    .line 456
    .line 457
    invoke-static {v0, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 458
    .line 459
    .line 460
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 461
    .line 462
    if-eqz p1, :cond_17

    .line 463
    .line 464
    sget-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 465
    .line 466
    xor-int/lit8 v6, p3, 0x1

    .line 467
    .line 468
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 469
    .line 470
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingClean;->h2:Ljava/lang/String;

    .line 471
    .line 472
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingClean;->i2:Ljava/lang/String;

    .line 473
    .line 474
    sget-boolean v5, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 475
    .line 476
    move v7, v6

    .line 477
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 481
    .line 482
    .line 483
    :cond_17
    :goto_8
    return-void

    .line 484
    nop

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
