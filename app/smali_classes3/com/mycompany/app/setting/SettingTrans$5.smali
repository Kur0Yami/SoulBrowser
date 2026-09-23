.class Lcom/mycompany/app/setting/SettingTrans$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTrans$5;->a:Lcom/mycompany/app/setting/SettingTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingTrans$5;->a:Lcom/mycompany/app/setting/SettingTrans;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq p2, v3, :cond_11

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq p2, v4, :cond_f

    .line 13
    .line 14
    if-eq p2, v0, :cond_b

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-eq p2, v0, :cond_a

    .line 18
    .line 19
    const/4 p3, 0x6

    .line 20
    if-eq p2, p3, :cond_6

    .line 21
    .line 22
    const/4 p1, 0x7

    .line 23
    if-eq p2, p1, :cond_3

    .line 24
    .line 25
    const/16 p1, 0x9

    .line 26
    .line 27
    if-eq p2, p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTrans;->T0()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 44
    .line 45
    .line 46
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 47
    .line 48
    :cond_2
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 p2, 0x1e

    .line 54
    .line 55
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 56
    .line 57
    iput-boolean v3, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 58
    .line 59
    sget p2, Lnet/kaki87/soul2/testing/R$string;->trans_except:I

    .line 60
    .line 61
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 62
    .line 63
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 64
    .line 65
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingTrans;->Y1:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {p2, v1, p1, p3, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 71
    .line 72
    new-instance p1, Lcom/mycompany/app/setting/SettingTrans$20;

    .line 73
    .line 74
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingTrans$20;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 81
    .line 82
    new-instance p2, Lcom/mycompany/app/setting/SettingTrans$21;

    .line 83
    .line 84
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTrans$21;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p1, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTrans;->T0()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingTrans;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 103
    .line 104
    .line 105
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTrans;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 106
    .line 107
    :cond_5
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 108
    .line 109
    new-instance p2, Lcom/mycompany/app/setting/SettingTrans$18;

    .line 110
    .line 111
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTrans$18;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 112
    .line 113
    .line 114
    const/16 p3, 0xa

    .line 115
    .line 116
    invoke-direct {p1, v1, p3, p2}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingTrans;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 120
    .line 121
    new-instance p2, Lcom/mycompany/app/setting/SettingTrans$19;

    .line 122
    .line 123
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTrans$19;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 131
    .line 132
    if-eqz p2, :cond_7

    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_7
    if-eqz p2, :cond_8

    .line 137
    .line 138
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 141
    .line 142
    .line 143
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 144
    .line 145
    :cond_8
    if-eqz p1, :cond_17

    .line 146
    .line 147
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 148
    .line 149
    if-nez p2, :cond_9

    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 159
    .line 160
    sget p3, Lnet/kaki87/soul2/testing/R$string;->address_bar:I

    .line 161
    .line 162
    sget-boolean p4, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 163
    .line 164
    xor-int/2addr p4, v3

    .line 165
    invoke-direct {p2, v2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 172
    .line 173
    sget p3, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 174
    .line 175
    sget-boolean p4, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 176
    .line 177
    invoke-direct {p2, v3, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 184
    .line 185
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 186
    .line 187
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 188
    .line 189
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 190
    .line 191
    new-instance v6, Lcom/mycompany/app/setting/SettingTrans$17;

    .line 192
    .line 193
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingTrans$17;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 194
    .line 195
    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 197
    .line 198
    .line 199
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 200
    .line 201
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 202
    .line 203
    return-void

    .line 204
    :cond_a
    sput-boolean p3, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 205
    .line 206
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 207
    .line 208
    const-string p2, "mTransIcon"

    .line 209
    .line 210
    invoke-static {v2, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_b
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingTrans;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 215
    .line 216
    if-eqz p2, :cond_c

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_c
    if-eqz p2, :cond_d

    .line 221
    .line 222
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 223
    .line 224
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 225
    .line 226
    .line 227
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTrans;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 228
    .line 229
    :cond_d
    if-eqz p1, :cond_17

    .line 230
    .line 231
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 232
    .line 233
    if-nez p2, :cond_e

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_e
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 238
    .line 239
    iput p2, v1, Lcom/mycompany/app/setting/SettingTrans;->h2:I

    .line 240
    .line 241
    move p2, v4

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 248
    .line 249
    sget p4, Lnet/kaki87/soul2/testing/R$string;->history_zero:I

    .line 250
    .line 251
    invoke-direct {p3, v2, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 258
    .line 259
    sget p4, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 260
    .line 261
    invoke-direct {p3, v3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 268
    .line 269
    sget p4, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 270
    .line 271
    invoke-direct {p3, p2, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 278
    .line 279
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 280
    .line 281
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 282
    .line 283
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 284
    .line 285
    new-instance v6, Lcom/mycompany/app/setting/SettingTrans$7;

    .line 286
    .line 287
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingTrans$7;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 288
    .line 289
    .line 290
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 291
    .line 292
    .line 293
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTrans;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 294
    .line 295
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 296
    .line 297
    return-void

    .line 298
    :cond_f
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTrans;->T0()Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_10

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_10
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTrans;->R0()V

    .line 307
    .line 308
    .line 309
    new-instance p1, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 310
    .line 311
    new-instance p2, Lcom/mycompany/app/setting/SettingTrans$14;

    .line 312
    .line 313
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTrans$14;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 314
    .line 315
    .line 316
    invoke-direct {p1, v1, v2, p2}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 317
    .line 318
    .line 319
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingTrans;->d2:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 320
    .line 321
    new-instance p2, Lcom/mycompany/app/setting/SettingTrans$15;

    .line 322
    .line 323
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTrans$15;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 324
    .line 325
    .line 326
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogTransLang;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 327
    .line 328
    new-instance p2, Lcom/mycompany/app/setting/SettingTrans$16;

    .line 329
    .line 330
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingTrans$16;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :cond_11
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingTrans;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 338
    .line 339
    if-eqz p2, :cond_12

    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_12
    if-eqz p2, :cond_13

    .line 343
    .line 344
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 345
    .line 346
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 347
    .line 348
    .line 349
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingTrans;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 350
    .line 351
    :cond_13
    if-eqz p1, :cond_17

    .line 352
    .line 353
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 354
    .line 355
    if-nez p2, :cond_14

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    move p2, v2

    .line 364
    :goto_0
    if-ge p2, v0, :cond_16

    .line 365
    .line 366
    sget-object p3, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 367
    .line 368
    aget p3, p3, p2

    .line 369
    .line 370
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 371
    .line 372
    sget-object v5, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 373
    .line 374
    aget v5, v5, p3

    .line 375
    .line 376
    sget v6, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 377
    .line 378
    if-ne v6, p3, :cond_15

    .line 379
    .line 380
    move p3, v3

    .line 381
    goto :goto_1

    .line 382
    :cond_15
    move p3, v2

    .line 383
    :goto_1
    invoke-direct {p4, p2, v5, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    add-int/lit8 p2, p2, 0x1

    .line 390
    .line 391
    goto :goto_0

    .line 392
    :cond_16
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 393
    .line 394
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 395
    .line 396
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 397
    .line 398
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 399
    .line 400
    new-instance v6, Lcom/mycompany/app/setting/SettingTrans$6;

    .line 401
    .line 402
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingTrans$6;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 403
    .line 404
    .line 405
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 406
    .line 407
    .line 408
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTrans;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 409
    .line 410
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 411
    .line 412
    :cond_17
    :goto_2
    return-void
.end method
