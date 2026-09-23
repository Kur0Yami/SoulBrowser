.class Lcom/mycompany/app/setting/SettingTab$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingTab;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTab$4;->a:Lcom/mycompany/app/setting/SettingTab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingTab;->g2:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingTab$4;->a:Lcom/mycompany/app/setting/SettingTab;

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_1
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingTab;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTab;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_1
    if-eqz p1, :cond_e

    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 44
    .line 45
    sget p3, Lnet/kaki87/soul2/testing/R$string;->delete_tab:I

    .line 46
    .line 47
    sget-boolean p4, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 48
    .line 49
    xor-int/2addr p4, v2

    .line 50
    invoke-direct {p2, v3, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 57
    .line 58
    sget p3, Lnet/kaki87/soul2/testing/R$string;->app_exit:I

    .line 59
    .line 60
    sget-boolean p4, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 61
    .line 62
    invoke-direct {p2, v2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 69
    .line 70
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 73
    .line 74
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    new-instance v6, Lcom/mycompany/app/setting/SettingTab$6;

    .line 77
    .line 78
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingTab$6;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTab;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 85
    .line 86
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_2
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtri;->n0:Z

    .line 90
    .line 91
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 92
    .line 93
    const/16 p2, 0x11

    .line 94
    .line 95
    const-string p4, "mLastSwipe"

    .line 96
    .line 97
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_3
    sput-boolean p3, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 102
    .line 103
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 104
    .line 105
    const/4 p2, 0x5

    .line 106
    const-string p4, "mLastNoti"

    .line 107
    .line 108
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_4
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZone;->j:Z

    .line 113
    .line 114
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 115
    .line 116
    const/16 p2, 0xf

    .line 117
    .line 118
    const-string p4, "mHomeClose"

    .line 119
    .line 120
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_5
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->B:Z

    .line 125
    .line 126
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 127
    .line 128
    const/16 p2, 0xe

    .line 129
    .line 130
    const-string p4, "mTabKeypad"

    .line 131
    .line 132
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_6
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTab;->S0()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_3

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_3
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->b2:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 145
    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetOpen;->dismiss()V

    .line 149
    .line 150
    .line 151
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTab;->b2:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 152
    .line 153
    :cond_4
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 154
    .line 155
    iput p1, v1, Lcom/mycompany/app/setting/SettingTab;->f2:I

    .line 156
    .line 157
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 158
    .line 159
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogSetOpen;-><init>(Landroid/app/Activity;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->b2:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 163
    .line 164
    new-instance p2, Lcom/mycompany/app/setting/SettingTab$10;

    .line 165
    .line 166
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTab$10;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_7
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTab;->S0()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_5
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetTabRestore;->dismiss()V

    .line 186
    .line 187
    .line 188
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTab;->a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 189
    .line 190
    :cond_6
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 191
    .line 192
    new-instance p2, Lcom/mycompany/app/setting/SettingTab$8;

    .line 193
    .line 194
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTab$8;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p1, v1, p2}, Lcom/mycompany/app/dialog/DialogSetTabRestore;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 198
    .line 199
    .line 200
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 201
    .line 202
    new-instance p2, Lcom/mycompany/app/setting/SettingTab$9;

    .line 203
    .line 204
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTab$9;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_8
    sput-boolean p3, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 212
    .line 213
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 214
    .line 215
    const-string p2, "mTabAnim"

    .line 216
    .line 217
    invoke-static {v3, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->s:Z

    .line 222
    .line 223
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 224
    .line 225
    const-string p2, "mTabLoop"

    .line 226
    .line 227
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_a
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->r:Z

    .line 232
    .line 233
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 234
    .line 235
    const-string p2, "mTabIndi"

    .line 236
    .line 237
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_b
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingTab;->T0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_c
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingTab;->T0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_d
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTab;->S0()Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_7

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_7
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 258
    .line 259
    if-eqz p1, :cond_8

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->dismiss()V

    .line 262
    .line 263
    .line 264
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTab;->d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 265
    .line 266
    :cond_8
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 267
    .line 268
    invoke-direct {p1, v1}, Lcom/mycompany/app/dialog/DialogSetTabDetail;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 269
    .line 270
    .line 271
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 272
    .line 273
    new-instance p2, Lcom/mycompany/app/setting/SettingTab$13;

    .line 274
    .line 275
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTab$13;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_e
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTab;->S0()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_9

    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_9
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 290
    .line 291
    if-eqz p1, :cond_a

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetTabPos;->dismiss()V

    .line 294
    .line 295
    .line 296
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 297
    .line 298
    :cond_a
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 299
    .line 300
    new-instance p2, Lcom/mycompany/app/setting/SettingTab$11;

    .line 301
    .line 302
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTab$11;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 303
    .line 304
    .line 305
    invoke-direct {p1, v1, p2}, Lcom/mycompany/app/dialog/DialogSetTabPos;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 306
    .line 307
    .line 308
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 309
    .line 310
    new-instance p2, Lcom/mycompany/app/setting/SettingTab$12;

    .line 311
    .line 312
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTab$12;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :pswitch_f
    sput-boolean p3, Lcom/mycompany/app/pref/PrefTts;->v:Z

    .line 320
    .line 321
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 322
    .line 323
    const/16 p2, 0xc

    .line 324
    .line 325
    const-string p4, "mAutoGroup"

    .line 326
    .line 327
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_10
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingTab;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 332
    .line 333
    if-eqz p2, :cond_b

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_b
    if-eqz p2, :cond_c

    .line 337
    .line 338
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 339
    .line 340
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 341
    .line 342
    .line 343
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTab;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 344
    .line 345
    :cond_c
    if-eqz p1, :cond_e

    .line 346
    .line 347
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 348
    .line 349
    if-nez p2, :cond_d

    .line 350
    .line 351
    goto :goto_0

    .line 352
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .line 356
    .line 357
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 358
    .line 359
    sget p3, Lnet/kaki87/soul2/testing/R$string;->tab_add_next:I

    .line 360
    .line 361
    sget-boolean p4, Lcom/mycompany/app/pref/PrefTts;->D:Z

    .line 362
    .line 363
    xor-int/2addr p4, v2

    .line 364
    invoke-direct {p2, v3, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 371
    .line 372
    sget p3, Lnet/kaki87/soul2/testing/R$string;->tab_add_last:I

    .line 373
    .line 374
    sget-boolean p4, Lcom/mycompany/app/pref/PrefTts;->D:Z

    .line 375
    .line 376
    invoke-direct {p2, v2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 383
    .line 384
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 385
    .line 386
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 387
    .line 388
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 389
    .line 390
    new-instance v6, Lcom/mycompany/app/setting/SettingTab$5;

    .line 391
    .line 392
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingTab$5;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 393
    .line 394
    .line 395
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 396
    .line 397
    .line 398
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTab;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 399
    .line 400
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 401
    .line 402
    :cond_e
    :goto_0
    return-void

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
