.class Lcom/mycompany/app/setting/SettingCustom$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCustom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$4;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingCustom$4;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    const/16 v0, 0xf

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    packed-switch p2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    goto/16 :goto_4

    .line 16
    .line 17
    :pswitch_1
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->D:Z

    .line 18
    .line 19
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    const-string p2, "mScrollAnim"

    .line 22
    .line 23
    invoke-static {v3, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZone;->B:Z

    .line 28
    .line 29
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 30
    .line 31
    const-string p2, "mVolScroll"

    .line 32
    .line 33
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_3
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingCustom;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 48
    .line 49
    .line 50
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    :cond_1
    if-eqz p1, :cond_15

    .line 53
    .line 54
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    move p2, v4

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object p3, Lcom/mycompany/app/main/MainConst;->M:[I

    .line 67
    .line 68
    array-length p3, p3

    .line 69
    move p4, v2

    .line 70
    :goto_0
    if-ge p4, p3, :cond_4

    .line 71
    .line 72
    sget-object v0, Lcom/mycompany/app/main/MainConst;->M:[I

    .line 73
    .line 74
    aget v0, v0, p4

    .line 75
    .line 76
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 77
    .line 78
    sget-object v5, Lcom/mycompany/app/main/MainConst;->N:[I

    .line 79
    .line 80
    aget v5, v5, v0

    .line 81
    .line 82
    sget v6, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 83
    .line 84
    if-ne v6, v0, :cond_3

    .line 85
    .line 86
    move v0, p2

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v0, v2

    .line 89
    :goto_1
    invoke-direct {v3, p4, v5, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 p4, p4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 103
    .line 104
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 105
    .line 106
    new-instance v6, Lcom/mycompany/app/setting/SettingCustom$7;

    .line 107
    .line 108
    invoke-direct {v6, v1, p3}, Lcom/mycompany/app/setting/SettingCustom$7;-><init>(Lcom/mycompany/app/setting/SettingCustom;I)V

    .line 109
    .line 110
    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingCustom;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 115
    .line 116
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_4
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingCustom;->R0()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :cond_5
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 128
    .line 129
    if-eqz p1, :cond_6

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditUp;->dismiss()V

    .line 132
    .line 133
    .line 134
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 135
    .line 136
    :cond_6
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditUp;

    .line 137
    .line 138
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogEditUp;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 139
    .line 140
    .line 141
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 142
    .line 143
    new-instance p2, Lcom/mycompany/app/setting/SettingCustom$15;

    .line 144
    .line 145
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingCustom$15;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_5
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 153
    .line 154
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 155
    .line 156
    const-string p2, "mPullRefresh"

    .line 157
    .line 158
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    .line 163
    .line 164
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 165
    .line 166
    const-class p3, Lcom/mycompany/app/setting/SettingHandArea;

    .line 167
    .line 168
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_7
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingCustom;->R0()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_7

    .line 180
    .line 181
    goto/16 :goto_4

    .line 182
    .line 183
    :cond_7
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 188
    .line 189
    .line 190
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 191
    .line 192
    :cond_8
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 193
    .line 194
    new-instance p2, Lcom/mycompany/app/setting/SettingCustom$13;

    .line 195
    .line 196
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingCustom$13;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 197
    .line 198
    .line 199
    const/16 p3, 0x8

    .line 200
    .line 201
    invoke-direct {p1, v1, p3, p2}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 202
    .line 203
    .line 204
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 205
    .line 206
    new-instance p2, Lcom/mycompany/app/setting/SettingCustom$14;

    .line 207
    .line 208
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingCustom$14;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_8
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtri;->H:Z

    .line 216
    .line 217
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 218
    .line 219
    const/16 p2, 0x11

    .line 220
    .line 221
    const-string p4, "mHandIcon"

    .line 222
    .line 223
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_9
    move p2, v4

    .line 228
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 229
    .line 230
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 231
    .line 232
    const-string p4, "mRecentSecret"

    .line 233
    .line 234
    invoke-static {v3, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 235
    .line 236
    .line 237
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 238
    .line 239
    if-eqz p1, :cond_15

    .line 240
    .line 241
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 242
    .line 243
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iput-boolean p2, p1, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_a
    move p2, v4

    .line 251
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 252
    .line 253
    if-eqz p3, :cond_9

    .line 254
    .line 255
    goto/16 :goto_4

    .line 256
    .line 257
    :cond_9
    if-eqz p3, :cond_a

    .line 258
    .line 259
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 260
    .line 261
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 262
    .line 263
    .line 264
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 265
    .line 266
    :cond_a
    if-eqz p1, :cond_15

    .line 267
    .line 268
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 269
    .line 270
    if-nez p3, :cond_b

    .line 271
    .line 272
    goto/16 :goto_4

    .line 273
    .line 274
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 280
    .line 281
    sget p4, Lnet/kaki87/soul2/testing/R$string;->history_zero:I

    .line 282
    .line 283
    invoke-direct {p3, v2, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 290
    .line 291
    sget p4, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 292
    .line 293
    invoke-direct {p3, p2, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 300
    .line 301
    const/4 p3, 0x2

    .line 302
    sget p4, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 303
    .line 304
    invoke-direct {p2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
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
    new-instance v6, Lcom/mycompany/app/setting/SettingCustom$6;

    .line 319
    .line 320
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingCustom$6;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 321
    .line 322
    .line 323
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 324
    .line 325
    .line 326
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 327
    .line 328
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_b
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 332
    .line 333
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 334
    .line 335
    const-string p2, "mAutoComp"

    .line 336
    .line 337
    invoke-static {v3, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_c
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingCustom;->R0()Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_c

    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :cond_c
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 350
    .line 351
    if-eqz p1, :cond_d

    .line 352
    .line 353
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetSuggest;->dismiss()V

    .line 354
    .line 355
    .line 356
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 357
    .line 358
    :cond_d
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 359
    .line 360
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 361
    .line 362
    new-instance p3, Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 363
    .line 364
    invoke-direct {p3, v1}, Lcom/mycompany/app/dialog/DialogSetSuggest;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 365
    .line 366
    .line 367
    iput-object p3, v1, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 368
    .line 369
    new-instance p4, Lcom/mycompany/app/setting/SettingCustom$9;

    .line 370
    .line 371
    invoke-direct {p4, v1, p1, p2}, Lcom/mycompany/app/setting/SettingCustom$9;-><init>(Lcom/mycompany/app/setting/SettingCustom;II)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p3, p4}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_d
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingCustom;->R0()Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_e

    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :cond_e
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->d2:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 387
    .line 388
    if-eqz p1, :cond_f

    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetAddr;->dismiss()V

    .line 391
    .line 392
    .line 393
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->d2:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 394
    .line 395
    :cond_f
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 396
    .line 397
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogSetAddr;-><init>(Landroid/app/Activity;)V

    .line 398
    .line 399
    .line 400
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->d2:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 401
    .line 402
    new-instance p2, Lcom/mycompany/app/setting/SettingCustom$10;

    .line 403
    .line 404
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingCustom$10;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :pswitch_e
    move p2, v4

    .line 412
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 413
    .line 414
    if-eqz p3, :cond_10

    .line 415
    .line 416
    goto/16 :goto_4

    .line 417
    .line 418
    :cond_10
    if-eqz p3, :cond_11

    .line 419
    .line 420
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 421
    .line 422
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 423
    .line 424
    .line 425
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 426
    .line 427
    :cond_11
    if-eqz p1, :cond_15

    .line 428
    .line 429
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 430
    .line 431
    if-nez p3, :cond_12

    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    move p3, v2

    .line 440
    :goto_2
    const/4 p4, 0x3

    .line 441
    if-ge p3, p4, :cond_14

    .line 442
    .line 443
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 444
    .line 445
    sget-object v0, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 446
    .line 447
    aget v0, v0, p3

    .line 448
    .line 449
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 450
    .line 451
    if-ne v3, p3, :cond_13

    .line 452
    .line 453
    move v3, p2

    .line 454
    goto :goto_3

    .line 455
    :cond_13
    move v3, v2

    .line 456
    :goto_3
    invoke-direct {p4, p3, v0, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    add-int/lit8 p3, p3, 0x1

    .line 463
    .line 464
    goto :goto_2

    .line 465
    :cond_14
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 466
    .line 467
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 468
    .line 469
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 470
    .line 471
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 472
    .line 473
    new-instance v6, Lcom/mycompany/app/setting/SettingCustom$5;

    .line 474
    .line 475
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingCustom$5;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 476
    .line 477
    .line 478
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 479
    .line 480
    .line 481
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 482
    .line 483
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 484
    .line 485
    return-void

    .line 486
    :pswitch_f
    new-instance p1, Landroid/content/Intent;

    .line 487
    .line 488
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 489
    .line 490
    const-class p3, Lcom/mycompany/app/setting/SettingFloat;

    .line 491
    .line 492
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :pswitch_10
    new-instance p1, Landroid/content/Intent;

    .line 500
    .line 501
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 502
    .line 503
    const-class p3, Lcom/mycompany/app/setting/SettingLand;

    .line 504
    .line 505
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    .line 507
    .line 508
    const-string p2, "EXTRA_PATH"

    .line 509
    .line 510
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingCustom;->X1:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :pswitch_11
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingCustom;->R0()Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-eqz p1, :cond_16

    .line 524
    .line 525
    :cond_15
    :goto_4
    return-void

    .line 526
    :cond_16
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 527
    .line 528
    if-eqz p1, :cond_17

    .line 529
    .line 530
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetFull;->dismiss()V

    .line 531
    .line 532
    .line 533
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 534
    .line 535
    :cond_17
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetFull;

    .line 536
    .line 537
    invoke-direct {p1, v1, p4}, Lcom/mycompany/app/dialog/DialogSetFull;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 538
    .line 539
    .line 540
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 541
    .line 542
    new-instance p2, Lcom/mycompany/app/setting/SettingCustom$8;

    .line 543
    .line 544
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingCustom$8;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
