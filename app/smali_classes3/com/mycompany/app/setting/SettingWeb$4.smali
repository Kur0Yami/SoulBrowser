.class Lcom/mycompany/app/setting/SettingWeb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingWeb$4;->a:Lcom/mycompany/app/setting/SettingWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingWeb;->h2:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingWeb$4;->a:Lcom/mycompany/app/setting/SettingWeb;

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    if-eq p2, p4, :cond_1a

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x3

    .line 12
    if-eq p2, v3, :cond_13

    .line 13
    .line 14
    if-eq p2, v4, :cond_d

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    if-eq p2, p1, :cond_9

    .line 18
    .line 19
    const/4 p1, 0x6

    .line 20
    const/4 v2, 0x7

    .line 21
    if-eq p2, p1, :cond_8

    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    .line 25
    if-eq p2, p1, :cond_4

    .line 26
    .line 27
    const/16 p1, 0x9

    .line 28
    .line 29
    if-eq p2, p1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_2
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 48
    .line 49
    .line 50
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 51
    .line 52
    :cond_3
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    const/16 p2, 0x1b

    .line 58
    .line 59
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 60
    .line 61
    iput-boolean p4, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 62
    .line 63
    sget p2, Lnet/kaki87/soul2/testing/R$string;->user_script_title:I

    .line 64
    .line 65
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 66
    .line 67
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 68
    .line 69
    invoke-direct {p2, v1, p1, v0, v0}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 73
    .line 74
    new-instance p1, Lcom/mycompany/app/setting/SettingWeb$10;

    .line 75
    .line 76
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingWeb$10;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 83
    .line 84
    new-instance p2, Lcom/mycompany/app/setting/SettingWeb$11;

    .line 85
    .line 86
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingWeb$11;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p1, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 93
    .line 94
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 95
    .line 96
    const-string p2, "mUserScript"

    .line 97
    .line 98
    invoke-static {v2, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_5
    new-instance p2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 108
    .line 109
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingWeb;->g2:Ljava/lang/String;

    .line 110
    .line 111
    sget-boolean p4, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 112
    .line 113
    invoke-direct {p2, p3, p4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 117
    .line 118
    .line 119
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 120
    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_6
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 126
    .line 127
    if-nez p1, :cond_7

    .line 128
    .line 129
    goto/16 :goto_4

    .line 130
    .line 131
    :cond_7
    new-instance p2, Lcom/mycompany/app/setting/SettingWeb$5;

    .line 132
    .line 133
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingWeb$5;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_8
    new-instance p1, Landroid/content/Intent;

    .line 141
    .line 142
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 143
    .line 144
    const-class p3, Lcom/mycompany/app/setting/SettingFont;

    .line 145
    .line 146
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_9
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 154
    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :cond_a
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 160
    .line 161
    if-eqz p2, :cond_b

    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_b
    if-eqz p1, :cond_c

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekWeb;->dismiss()V

    .line 168
    .line 169
    .line 170
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 171
    .line 172
    :cond_c
    new-instance p1, Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 173
    .line 174
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingWeb;->Y1:Ljava/lang/String;

    .line 175
    .line 176
    new-instance p3, Lcom/mycompany/app/setting/SettingWeb$8;

    .line 177
    .line 178
    invoke-direct {p3, v1}, Lcom/mycompany/app/setting/SettingWeb$8;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p1, v1, p2, p3}, Lcom/mycompany/app/dialog/DialogSeekWeb;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V

    .line 182
    .line 183
    .line 184
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 185
    .line 186
    new-instance p2, Lcom/mycompany/app/setting/SettingWeb$9;

    .line 187
    .line 188
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingWeb$9;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_d
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingWeb;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 196
    .line 197
    if-eqz p2, :cond_e

    .line 198
    .line 199
    goto/16 :goto_4

    .line 200
    .line 201
    :cond_e
    if-eqz p2, :cond_f

    .line 202
    .line 203
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 206
    .line 207
    .line 208
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingWeb;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 209
    .line 210
    :cond_f
    if-eqz p1, :cond_19

    .line 211
    .line 212
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 213
    .line 214
    if-nez p2, :cond_10

    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_10
    move p2, v4

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    move p3, v2

    .line 225
    :goto_0
    if-ge p3, p2, :cond_12

    .line 226
    .line 227
    sget-object v0, Lcom/mycompany/app/setting/SettingWeb;->j2:[I

    .line 228
    .line 229
    aget v0, v0, p3

    .line 230
    .line 231
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingWeb;->Q0(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 238
    .line 239
    if-ne v6, v0, :cond_11

    .line 240
    .line 241
    move v0, p4

    .line 242
    goto :goto_1

    .line 243
    :cond_11
    move v0, v2

    .line 244
    :goto_1
    invoke-direct {v3, v5, p3, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    add-int/lit8 p3, p3, 0x1

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_12
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 254
    .line 255
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 256
    .line 257
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 258
    .line 259
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 260
    .line 261
    new-instance v6, Lcom/mycompany/app/setting/SettingWeb$7;

    .line 262
    .line 263
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingWeb$7;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 264
    .line 265
    .line 266
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 267
    .line 268
    .line 269
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingWeb;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 270
    .line 271
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 272
    .line 273
    return-void

    .line 274
    :cond_13
    move p2, v4

    .line 275
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingWeb;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 276
    .line 277
    if-eqz p3, :cond_14

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_14
    if-eqz p3, :cond_15

    .line 281
    .line 282
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 283
    .line 284
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 285
    .line 286
    .line 287
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingWeb;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 288
    .line 289
    :cond_15
    if-eqz p1, :cond_19

    .line 290
    .line 291
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 292
    .line 293
    if-nez p3, :cond_16

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .line 300
    .line 301
    move p3, v2

    .line 302
    :goto_2
    if-ge p3, p2, :cond_18

    .line 303
    .line 304
    sget-object v0, Lcom/mycompany/app/setting/SettingWeb;->h2:[I

    .line 305
    .line 306
    aget v0, v0, p3

    .line 307
    .line 308
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 309
    .line 310
    sget-object v5, Lcom/mycompany/app/setting/SettingWeb;->i2:[I

    .line 311
    .line 312
    aget v5, v5, v0

    .line 313
    .line 314
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 315
    .line 316
    if-ne v6, v0, :cond_17

    .line 317
    .line 318
    move v0, p4

    .line 319
    goto :goto_3

    .line 320
    :cond_17
    move v0, v2

    .line 321
    :goto_3
    invoke-direct {v3, p3, v5, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    add-int/lit8 p3, p3, 0x1

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_18
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 331
    .line 332
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 333
    .line 334
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 335
    .line 336
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 337
    .line 338
    new-instance v6, Lcom/mycompany/app/setting/SettingWeb$6;

    .line 339
    .line 340
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingWeb$6;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 341
    .line 342
    .line 343
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 344
    .line 345
    .line 346
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingWeb;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 347
    .line 348
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 349
    .line 350
    :cond_19
    :goto_4
    return-void

    .line 351
    :cond_1a
    xor-int/lit8 p1, p3, 0x1

    .line 352
    .line 353
    sput-boolean p1, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 354
    .line 355
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 356
    .line 357
    const/16 p3, 0xf

    .line 358
    .line 359
    const-string p4, "mHideImage"

    .line 360
    .line 361
    invoke-static {p3, p2, p4, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 362
    .line 363
    .line 364
    return-void
.end method
