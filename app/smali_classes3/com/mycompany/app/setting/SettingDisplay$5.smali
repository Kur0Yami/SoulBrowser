.class Lcom/mycompany/app/setting/SettingDisplay$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$5;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 9

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDisplay$5;->a:Lcom/mycompany/app/setting/SettingDisplay;

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
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_8

    .line 21
    .line 22
    :cond_0
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 27
    .line 28
    .line 29
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_1e

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_2
    move p2, v4

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    move p3, v3

    .line 46
    :goto_0
    if-ge p3, v2, :cond_4

    .line 47
    .line 48
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 49
    .line 50
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->t2:[I

    .line 51
    .line 52
    aget v0, v0, p3

    .line 53
    .line 54
    sget v5, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 55
    .line 56
    if-ne v5, p3, :cond_3

    .line 57
    .line 58
    move v5, p2

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v5, v3

    .line 61
    :goto_1
    invoke-direct {p4, p3, v0, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 p3, p3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 71
    .line 72
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 73
    .line 74
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 75
    .line 76
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 77
    .line 78
    new-instance v6, Lcom/mycompany/app/setting/SettingDisplay$11;

    .line 79
    .line 80
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDisplay$11;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_2
    move p2, v4

    .line 92
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingDisplay;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 93
    .line 94
    if-eqz p3, :cond_5

    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_5
    if-eqz p3, :cond_6

    .line 99
    .line 100
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 101
    .line 102
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 103
    .line 104
    .line 105
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 106
    .line 107
    :cond_6
    if-eqz p1, :cond_1e

    .line 108
    .line 109
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 110
    .line 111
    if-nez p3, :cond_7

    .line 112
    .line 113
    goto/16 :goto_8

    .line 114
    .line 115
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object p3, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 121
    .line 122
    array-length p3, p3

    .line 123
    move p4, v3

    .line 124
    :goto_2
    if-ge p4, p3, :cond_9

    .line 125
    .line 126
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 127
    .line 128
    sget-object v2, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 129
    .line 130
    aget v2, v2, p4

    .line 131
    .line 132
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 133
    .line 134
    if-ne v5, p4, :cond_8

    .line 135
    .line 136
    move v5, p2

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    move v5, v3

    .line 139
    :goto_3
    invoke-direct {v0, p4, v2, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    add-int/lit8 p4, p4, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_9
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 149
    .line 150
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 153
    .line 154
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 155
    .line 156
    new-instance v6, Lcom/mycompany/app/setting/SettingDisplay$10;

    .line 157
    .line 158
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDisplay$10;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 159
    .line 160
    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->b2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 165
    .line 166
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_3
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->T0()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_a

    .line 174
    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_a
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingDisplay;->h2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 178
    .line 179
    if-eqz p1, :cond_b

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 182
    .line 183
    .line 184
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->h2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 185
    .line 186
    :cond_b
    new-instance p1, Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    new-instance p3, Lcom/mycompany/app/setting/SettingDisplay$22;

    .line 193
    .line 194
    invoke-direct {p3, v1}, Lcom/mycompany/app/setting/SettingDisplay$22;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p1, v1, p2, v3, p3}, Lcom/mycompany/app/dialog/DialogSeekBright;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 198
    .line 199
    .line 200
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingDisplay;->h2:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 201
    .line 202
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$23;

    .line 203
    .line 204
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$23;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_4
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->T0()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_c

    .line 216
    .line 217
    goto/16 :goto_8

    .line 218
    .line 219
    :cond_c
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 220
    .line 221
    if-eqz p1, :cond_d

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 224
    .line 225
    .line 226
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 227
    .line 228
    :cond_d
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 229
    .line 230
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$18;

    .line 231
    .line 232
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$18;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 233
    .line 234
    .line 235
    const/4 p3, 0x5

    .line 236
    invoke-direct {p1, v1, p3, p2}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 237
    .line 238
    .line 239
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingDisplay;->g2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 240
    .line 241
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$19;

    .line 242
    .line 243
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$19;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 244
    .line 245
    .line 246
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->g0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 247
    .line 248
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$20;

    .line 249
    .line 250
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$20;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 257
    .line 258
    if-nez p1, :cond_e

    .line 259
    .line 260
    goto/16 :goto_8

    .line 261
    .line 262
    :cond_e
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$21;

    .line 263
    .line 264
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$21;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :pswitch_5
    move p2, v4

    .line 272
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 273
    .line 274
    if-eqz p3, :cond_f

    .line 275
    .line 276
    goto/16 :goto_8

    .line 277
    .line 278
    :cond_f
    if-eqz p3, :cond_10

    .line 279
    .line 280
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 281
    .line 282
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 283
    .line 284
    .line 285
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 286
    .line 287
    :cond_10
    if-eqz p1, :cond_1e

    .line 288
    .line 289
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 290
    .line 291
    if-nez p3, :cond_11

    .line 292
    .line 293
    goto/16 :goto_8

    .line 294
    .line 295
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    sget-object p3, Lcom/mycompany/app/main/MainConst;->W:[I

    .line 301
    .line 302
    array-length p3, p3

    .line 303
    move p4, v3

    .line 304
    :goto_4
    if-ge p4, p3, :cond_13

    .line 305
    .line 306
    sget-object v0, Lcom/mycompany/app/main/MainConst;->W:[I

    .line 307
    .line 308
    aget v0, v0, p4

    .line 309
    .line 310
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 311
    .line 312
    sget-object v5, Lcom/mycompany/app/main/MainConst;->X:[I

    .line 313
    .line 314
    aget v5, v5, v0

    .line 315
    .line 316
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 317
    .line 318
    if-ne v6, v0, :cond_12

    .line 319
    .line 320
    move v0, p2

    .line 321
    goto :goto_5

    .line 322
    :cond_12
    move v0, v3

    .line 323
    :goto_5
    invoke-direct {v2, p4, v5, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    add-int/lit8 p4, p4, 0x1

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_13
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 333
    .line 334
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 335
    .line 336
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 337
    .line 338
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 339
    .line 340
    new-instance v6, Lcom/mycompany/app/setting/SettingDisplay$9;

    .line 341
    .line 342
    invoke-direct {v6, v1, p3}, Lcom/mycompany/app/setting/SettingDisplay$9;-><init>(Lcom/mycompany/app/setting/SettingDisplay;I)V

    .line 343
    .line 344
    .line 345
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 346
    .line 347
    .line 348
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 349
    .line 350
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_6
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 354
    .line 355
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 356
    .line 357
    const-string p2, "mDarkHome"

    .line 358
    .line 359
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_7
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->T0()Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-eqz p1, :cond_14

    .line 368
    .line 369
    goto/16 :goto_8

    .line 370
    .line 371
    :cond_14
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->S0()V

    .line 372
    .line 373
    .line 374
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetHead;

    .line 375
    .line 376
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$16;

    .line 377
    .line 378
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$16;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 379
    .line 380
    .line 381
    invoke-direct {p1, v1, p2}, Lcom/mycompany/app/dialog/DialogSetHead;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 382
    .line 383
    .line 384
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingDisplay;->f2:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 385
    .line 386
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$17;

    .line 387
    .line 388
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$17;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_8
    move p2, v4

    .line 396
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 397
    .line 398
    if-eqz p3, :cond_15

    .line 399
    .line 400
    goto/16 :goto_8

    .line 401
    .line 402
    :cond_15
    if-eqz p3, :cond_16

    .line 403
    .line 404
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 405
    .line 406
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 407
    .line 408
    .line 409
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 410
    .line 411
    :cond_16
    if-eqz p1, :cond_1e

    .line 412
    .line 413
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 414
    .line 415
    if-nez p3, :cond_17

    .line 416
    .line 417
    goto/16 :goto_8

    .line 418
    .line 419
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .line 423
    .line 424
    move p3, v3

    .line 425
    :goto_6
    if-ge p3, v2, :cond_19

    .line 426
    .line 427
    sget-object p4, Lcom/mycompany/app/setting/SettingDisplay;->r2:[I

    .line 428
    .line 429
    aget p4, p4, p3

    .line 430
    .line 431
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 432
    .line 433
    sget-object v5, Lcom/mycompany/app/setting/SettingDisplay;->s2:[I

    .line 434
    .line 435
    aget v5, v5, p4

    .line 436
    .line 437
    sget v6, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 438
    .line 439
    if-ne v6, p4, :cond_18

    .line 440
    .line 441
    move p4, p2

    .line 442
    goto :goto_7

    .line 443
    :cond_18
    move p4, v3

    .line 444
    :goto_7
    invoke-direct {v0, p3, v5, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    add-int/lit8 p3, p3, 0x1

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_19
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 454
    .line 455
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 456
    .line 457
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 458
    .line 459
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 460
    .line 461
    new-instance v6, Lcom/mycompany/app/setting/SettingDisplay$8;

    .line 462
    .line 463
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDisplay$8;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 464
    .line 465
    .line 466
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 467
    .line 468
    .line 469
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 470
    .line 471
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 472
    .line 473
    return-void

    .line 474
    :pswitch_9
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->T0()Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    if-eqz p1, :cond_1a

    .line 479
    .line 480
    goto/16 :goto_8

    .line 481
    .line 482
    :cond_1a
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingDisplay;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 483
    .line 484
    if-eqz p1, :cond_1b

    .line 485
    .line 486
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 487
    .line 488
    .line 489
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDisplay;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 490
    .line 491
    :cond_1b
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 492
    .line 493
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 494
    .line 495
    new-instance p3, Lcom/mycompany/app/setting/SettingDisplay$14;

    .line 496
    .line 497
    invoke-direct {p3, v1}, Lcom/mycompany/app/setting/SettingDisplay$14;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 498
    .line 499
    .line 500
    invoke-direct {p2, v1, v2, p1, p3}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 501
    .line 502
    .line 503
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingDisplay;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 504
    .line 505
    new-instance p1, Lcom/mycompany/app/setting/SettingDisplay$15;

    .line 506
    .line 507
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingDisplay$15;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :pswitch_a
    move p2, v4

    .line 515
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 516
    .line 517
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 518
    .line 519
    const-string p4, "mThemeImg"

    .line 520
    .line 521
    invoke-static {v0, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 522
    .line 523
    .line 524
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 525
    .line 526
    if-nez p1, :cond_1c

    .line 527
    .line 528
    goto :goto_8

    .line 529
    :cond_1c
    sget-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 530
    .line 531
    xor-int/lit8 v7, p3, 0x1

    .line 532
    .line 533
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 534
    .line 535
    sget p2, Lnet/kaki87/soul2/testing/R$string;->img_bright:I

    .line 536
    .line 537
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 542
    .line 543
    invoke-static {p2}, Lcom/mycompany/app/setting/SettingDisplay;->Q0(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    const/4 v8, 0x0

    .line 548
    const/4 v5, 0x2

    .line 549
    const/4 v4, 0x6

    .line 550
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_b
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 558
    .line 559
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 560
    .line 561
    const-string p2, "mThemeSys"

    .line 562
    .line 563
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 564
    .line 565
    .line 566
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 567
    .line 568
    if-nez p1, :cond_1d

    .line 569
    .line 570
    goto :goto_8

    .line 571
    :cond_1d
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 572
    .line 573
    sget-object p1, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 574
    .line 575
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 576
    .line 577
    aget p2, p1, p2

    .line 578
    .line 579
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 584
    .line 585
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 586
    .line 587
    const/4 v8, 0x0

    .line 588
    const/4 v5, 0x1

    .line 589
    const-string v3, "UI"

    .line 590
    .line 591
    const/4 v4, 0x1

    .line 592
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p2, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 596
    .line 597
    .line 598
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 599
    .line 600
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 601
    .line 602
    sget v3, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 605
    .line 606
    aget p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget p1, Lnet/kaki87/soul2/testing/R$string;->web_page_dark_info:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p2, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 613
    .line 614
    .line 615
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 616
    .line 617
    if-nez p1, :cond_1f

    .line 618
    .line 619
    :cond_1e
    :goto_8
    return-void

    .line 620
    :cond_1f
    new-instance p2, Lcom/mycompany/app/setting/SettingDisplay$6;

    .line 621
    .line 622
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingDisplay$6;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :pswitch_c
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingDisplay;->U0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 630
    .line 631
    .line 632
    return-void

    .line 633
    :pswitch_d
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingDisplay;->U0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 634
    .line 635
    .line 636
    return-void

    :pswitch_e
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->T0()Z

    move-result p1

    if-eqz p1, :cond_folder_color

    goto/16 :goto_8

    :cond_folder_color
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingDisplay;->V0()V

    sget p1, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    if-nez p1, :cond_folder_color_seed

    const/high16 p1, -0x10000

    :cond_folder_color_seed
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickColor;

    new-instance p3, Lcom/mycompany/app/setting/SettingDisplay$24;

    invoke-direct {p3, v1}, Lcom/mycompany/app/setting/SettingDisplay$24;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    invoke-direct {p2, v1, p1, p3}, Lcom/mycompany/app/dialog/DialogQuickColor;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;)V

    iput-object p2, v1, Lcom/mycompany/app/setting/SettingDisplay;->u2:Lcom/mycompany/app/dialog/DialogQuickColor;

    new-instance p1, Lcom/mycompany/app/setting/SettingDisplay$25;

    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingDisplay$25;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :pswitch_f
    move p2, v4

    iget-object p3, v1, Lcom/mycompany/app/setting/SettingDisplay;->x2:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz p3, :cond_link_tab_show

    goto/16 :goto_8

    :cond_link_tab_show
    if-eqz p1, :cond_link_tab_done

    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    if-nez p3, :cond_link_tab_build

    goto/16 :goto_8

    :cond_link_tab_build
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move p3, v3

    :goto_link_tab
    if-ge p3, v2, :cond_link_tab_menu

    sget-object p4, Lcom/mycompany/app/setting/SettingDisplay;->v2:[I

    aget p4, p4, p3

    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    sget-object v5, Lcom/mycompany/app/setting/SettingDisplay;->w2:[I

    aget v5, v5, p4

    sget v6, Lcom/mycompany/app/pref/PrefWeb;->c0:I

    if-ne v6, p4, :cond_link_tab_unsel

    move p4, p2

    goto :goto_link_tab_item

    :cond_link_tab_unsel
    move p4, v3

    :goto_link_tab_item
    invoke-direct {v0, p3, v5, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_link_tab

    :cond_link_tab_menu
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    new-instance v6, Lcom/mycompany/app/setting/SettingDisplay$26;

    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDisplay$26;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->x2:Lcom/mycompany/app/view/MyPopupMenu;

    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    :cond_link_tab_done
    return-void

    :pswitch_10
    move p2, v4

    iget-object p3, v1, Lcom/mycompany/app/setting/SettingDisplay;->A2:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz p3, :cond_url_bar_show

    goto/16 :goto_8

    :cond_url_bar_show
    if-eqz p1, :cond_url_bar_done

    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    if-nez p3, :cond_url_bar_build

    goto/16 :goto_8

    :cond_url_bar_build
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move p3, v3

    :goto_url_bar
    if-ge p3, v2, :cond_url_bar_menu

    sget-object p4, Lcom/mycompany/app/setting/SettingDisplay;->y2:[I

    aget p4, p4, p3

    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    sget-object v5, Lcom/mycompany/app/setting/SettingDisplay;->z2:[I

    aget v5, v5, p4

    sget v6, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    if-ne v6, p4, :cond_url_bar_unsel

    move p4, p2

    goto :goto_url_bar_item

    :cond_url_bar_unsel
    move p4, v3

    :goto_url_bar_item
    invoke-direct {v0, p3, v5, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_url_bar

    :cond_url_bar_menu
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    new-instance v6, Lcom/mycompany/app/setting/SettingDisplay$27;

    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDisplay$27;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDisplay;->A2:Lcom/mycompany/app/view/MyPopupMenu;

    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    :cond_url_bar_done
    return-void

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
