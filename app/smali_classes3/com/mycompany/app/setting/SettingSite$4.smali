.class Lcom/mycompany/app/setting/SettingSite$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSite;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSite$4;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingSite;->e2:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSite$4;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 5
    .line 6
    const-string v0, "..home_link"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto/16 :goto_7

    .line 14
    .line 15
    :pswitch_1
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSite;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

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
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingSite;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_1
    if-eqz p1, :cond_18

    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    goto/16 :goto_7

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
    sget-object p2, Lcom/mycompany/app/main/MainConst;->k:[I

    .line 44
    .line 45
    array-length p2, p2

    .line 46
    move p3, v2

    .line 47
    :goto_0
    if-ge p3, p2, :cond_4

    .line 48
    .line 49
    sget-object p4, Lcom/mycompany/app/main/MainConst;->k:[I

    .line 50
    .line 51
    aget p4, p4, p3

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 54
    .line 55
    sget-object v5, Lcom/mycompany/app/main/MainConst;->l:[I

    .line 56
    .line 57
    aget v5, v5, p4

    .line 58
    .line 59
    sget v6, Lcom/mycompany/app/pref/PrefZone;->I:I

    .line 60
    .line 61
    if-ne v6, p4, :cond_3

    .line 62
    .line 63
    move v6, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v6, v2

    .line 66
    :goto_1
    invoke-direct {v0, p4, v5, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 p3, p3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 76
    .line 77
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 80
    .line 81
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 82
    .line 83
    new-instance v6, Lcom/mycompany/app/setting/SettingSite$11;

    .line 84
    .line 85
    invoke-direct {v6, v1, p2}, Lcom/mycompany/app/setting/SettingSite$11;-><init>(Lcom/mycompany/app/setting/SettingSite;I)V

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSite;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 92
    .line 93
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_2
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 97
    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_5
    if-eqz p2, :cond_6

    .line 103
    .line 104
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 107
    .line 108
    .line 109
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 110
    .line 111
    :cond_6
    if-eqz p1, :cond_18

    .line 112
    .line 113
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 114
    .line 115
    if-nez p2, :cond_7

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object p2, Lcom/mycompany/app/main/MainConst;->g:[I

    .line 125
    .line 126
    array-length p2, p2

    .line 127
    move p3, v2

    .line 128
    :goto_2
    if-ge p3, p2, :cond_9

    .line 129
    .line 130
    sget-object p4, Lcom/mycompany/app/main/MainConst;->g:[I

    .line 131
    .line 132
    aget p4, p4, p3

    .line 133
    .line 134
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 135
    .line 136
    sget-object v5, Lcom/mycompany/app/main/MainConst;->h:[I

    .line 137
    .line 138
    aget v5, v5, p4

    .line 139
    .line 140
    sget v6, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 141
    .line 142
    if-ne v6, p4, :cond_8

    .line 143
    .line 144
    move v6, v3

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    move v6, v2

    .line 147
    :goto_3
    invoke-direct {v0, p4, v5, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    add-int/lit8 p3, p3, 0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_9
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 157
    .line 158
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 159
    .line 160
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 161
    .line 162
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 163
    .line 164
    new-instance v6, Lcom/mycompany/app/setting/SettingSite$10;

    .line 165
    .line 166
    invoke-direct {v6, v1, p2}, Lcom/mycompany/app/setting/SettingSite$10;-><init>(Lcom/mycompany/app/setting/SettingSite;I)V

    .line 167
    .line 168
    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 170
    .line 171
    .line 172
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 173
    .line 174
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_3
    sput-boolean p3, Lcom/mycompany/app/pref/PrefAlbum;->P:Z

    .line 178
    .line 179
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 180
    .line 181
    const-string p2, "mLinkApp"

    .line 182
    .line 183
    invoke-static {v2, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 188
    .line 189
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 190
    .line 191
    const-class p3, Lcom/mycompany/app/main/list/MainListAgent;

    .line 192
    .line 193
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .line 195
    .line 196
    const/16 p2, 0x10

    .line 197
    .line 198
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    .line 203
    .line 204
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 205
    .line 206
    const-class p3, Lcom/mycompany/app/main/list/MainListSearch;

    .line 207
    .line 208
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .line 210
    .line 211
    const/16 p2, 0xf

    .line 212
    .line 213
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_6
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 218
    .line 219
    if-eqz p1, :cond_a

    .line 220
    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_a
    if-eqz p1, :cond_b

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 226
    .line 227
    .line 228
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 229
    .line 230
    :cond_b
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 233
    .line 234
    .line 235
    const/16 p2, 0x1f

    .line 236
    .line 237
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 238
    .line 239
    sget p2, Lnet/kaki87/soul2/testing/R$string;->permission:I

    .line 240
    .line 241
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 242
    .line 243
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 244
    .line 245
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingSite;->Y1:Ljava/lang/String;

    .line 246
    .line 247
    invoke-direct {p2, v1, p1, p3, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 248
    .line 249
    .line 250
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 251
    .line 252
    new-instance p1, Lcom/mycompany/app/setting/SettingSite$8;

    .line 253
    .line 254
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingSite$8;-><init>(Lcom/mycompany/app/setting/SettingSite;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 261
    .line 262
    new-instance p2, Lcom/mycompany/app/setting/SettingSite$9;

    .line 263
    .line 264
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingSite$9;-><init>(Lcom/mycompany/app/setting/SettingSite;)V

    .line 265
    .line 266
    .line 267
    iput-object p2, p1, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_7
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 271
    .line 272
    if-eqz p2, :cond_c

    .line 273
    .line 274
    goto/16 :goto_7

    .line 275
    .line 276
    :cond_c
    if-eqz p2, :cond_d

    .line 277
    .line 278
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 279
    .line 280
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 281
    .line 282
    .line 283
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 284
    .line 285
    :cond_d
    if-eqz p1, :cond_18

    .line 286
    .line 287
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 288
    .line 289
    if-nez p2, :cond_e

    .line 290
    .line 291
    goto/16 :goto_7

    .line 292
    .line 293
    :cond_e
    sget-object p2, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    xor-int/lit8 p3, p2, 0x1

    .line 300
    .line 301
    new-instance v4, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 307
    .line 308
    sget v0, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 309
    .line 310
    invoke-direct {p4, v2, v0, p2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 317
    .line 318
    sget p4, Lnet/kaki87/soul2/testing/R$string;->user_defined:I

    .line 319
    .line 320
    if-ne p3, v3, :cond_f

    .line 321
    .line 322
    move v2, v3

    .line 323
    :cond_f
    invoke-direct {p2, v3, p4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 330
    .line 331
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 332
    .line 333
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 334
    .line 335
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 336
    .line 337
    new-instance v6, Lcom/mycompany/app/setting/SettingSite$7;

    .line 338
    .line 339
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingSite$7;-><init>(Lcom/mycompany/app/setting/SettingSite;)V

    .line 340
    .line 341
    .line 342
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 343
    .line 344
    .line 345
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 346
    .line 347
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 348
    .line 349
    return-void

    .line 350
    :pswitch_8
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 351
    .line 352
    if-eqz p2, :cond_10

    .line 353
    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :cond_10
    if-eqz p2, :cond_11

    .line 357
    .line 358
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 359
    .line 360
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 361
    .line 362
    .line 363
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 364
    .line 365
    :cond_11
    if-eqz p1, :cond_18

    .line 366
    .line 367
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 368
    .line 369
    if-nez p2, :cond_12

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_12
    sget-object p2, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    const/4 p3, 0x2

    .line 379
    if-eqz p2, :cond_13

    .line 380
    .line 381
    move p2, v2

    .line 382
    goto :goto_4

    .line 383
    :cond_13
    sget-object p2, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-eqz p2, :cond_14

    .line 390
    .line 391
    move p2, v3

    .line 392
    goto :goto_4

    .line 393
    :cond_14
    move p2, p3

    .line 394
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 400
    .line 401
    sget v0, Lnet/kaki87/soul2/testing/R$string;->last_page:I

    .line 402
    .line 403
    if-nez p2, :cond_15

    .line 404
    .line 405
    move v5, v3

    .line 406
    goto :goto_5

    .line 407
    :cond_15
    move v5, v2

    .line 408
    :goto_5
    invoke-direct {p4, v2, v0, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 415
    .line 416
    sget v0, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 417
    .line 418
    if-ne p2, v3, :cond_16

    .line 419
    .line 420
    move v5, v3

    .line 421
    goto :goto_6

    .line 422
    :cond_16
    move v5, v2

    .line 423
    :goto_6
    invoke-direct {p4, v3, v0, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 430
    .line 431
    sget v0, Lnet/kaki87/soul2/testing/R$string;->user_defined:I

    .line 432
    .line 433
    if-ne p2, p3, :cond_17

    .line 434
    .line 435
    move v2, v3

    .line 436
    :cond_17
    invoke-direct {p4, p3, v0, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 443
    .line 444
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 445
    .line 446
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 447
    .line 448
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 449
    .line 450
    new-instance v6, Lcom/mycompany/app/setting/SettingSite$6;

    .line 451
    .line 452
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingSite$6;-><init>(Lcom/mycompany/app/setting/SettingSite;)V

    .line 453
    .line 454
    .line 455
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 456
    .line 457
    .line 458
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 459
    .line 460
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 461
    .line 462
    :cond_18
    :goto_7
    return-void

    .line 463
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    .line 464
    .line 465
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 466
    .line 467
    const-class p3, Lcom/mycompany/app/setting/SettingHome;

    .line 468
    .line 469
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .line 471
    .line 472
    const-string p2, "EXTRA_TYPE"

    .line 473
    .line 474
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    .line 476
    .line 477
    const-string p2, "EXTRA_PATH"

    .line 478
    .line 479
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingSite;->Y1:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    const/16 p2, 0xd

    .line 485
    .line 486
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 487
    .line 488
    .line 489
    return-void

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
