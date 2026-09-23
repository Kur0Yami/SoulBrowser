.class Lcom/mycompany/app/setting/SettingDown$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown$5;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDown$5;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch p2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_2

    .line 12
    .line 13
    :pswitch_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string p2, "android.intent.action.SENDTO"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "mailto:"

    .line 21
    .line 22
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p2, "android.intent.extra.EMAIL"

    .line 30
    .line 31
    const-string p3, "soulbrowser.com@outlook.com"

    .line 32
    .line 33
    filled-new-array {p3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p2, "android.intent.extra.SUBJECT"

    .line 41
    .line 42
    sget p3, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 43
    .line 44
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string p2, "android.intent.extra.TEXT"

    .line 52
    .line 53
    iget-object p3, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 54
    .line 55
    iget-object p4, v1, Lcom/mycompany/app/setting/SettingDown;->X1:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->H0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 69
    .line 70
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :catch_1
    sget p1, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 76
    .line 77
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :pswitch_2
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 83
    .line 84
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 85
    .line 86
    const/16 p2, 0xf

    .line 87
    .line 88
    const-string p4, "mNotiDown"

    .line 89
    .line 90
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_3
    invoke-virtual {v1, p2}, Lcom/mycompany/app/setting/SettingDown;->S0(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_4
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 99
    .line 100
    if-eqz p2, :cond_0

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    .line 106
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 109
    .line 110
    .line 111
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 112
    .line 113
    :cond_1
    if-eqz p1, :cond_d

    .line 114
    .line 115
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 116
    .line 117
    if-nez p2, :cond_2

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 127
    .line 128
    sget p3, Lnet/kaki87/soul2/testing/R$string;->not_allow:I

    .line 129
    .line 130
    invoke-direct {p2, v2, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 137
    .line 138
    sget p3, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 139
    .line 140
    invoke-direct {p2, v0, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 147
    .line 148
    const/4 p3, 0x2

    .line 149
    sget p4, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 150
    .line 151
    invoke-direct {p2, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 158
    .line 159
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 160
    .line 161
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 162
    .line 163
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 164
    .line 165
    new-instance v6, Lcom/mycompany/app/setting/SettingDown$9;

    .line 166
    .line 167
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDown$9;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 168
    .line 169
    .line 170
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 174
    .line 175
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_5
    invoke-virtual {v1, p2}, Lcom/mycompany/app/setting/SettingDown;->S0(I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_6
    invoke-virtual {v1, p2}, Lcom/mycompany/app/setting/SettingDown;->S0(I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_7
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDown;->b2:Ljava/util/ArrayList;

    .line 187
    .line 188
    if-eqz p2, :cond_9

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_3

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_3
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDown;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 198
    .line 199
    if-eqz p2, :cond_4

    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_4
    if-eqz p2, :cond_5

    .line 204
    .line 205
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 208
    .line 209
    .line 210
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDown;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 211
    .line 212
    :cond_5
    if-eqz p1, :cond_d

    .line 213
    .line 214
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 215
    .line 216
    if-nez p2, :cond_6

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_6
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDown;->b2:Ljava/util/ArrayList;

    .line 221
    .line 222
    if-nez p2, :cond_7

    .line 223
    .line 224
    goto/16 :goto_2

    .line 225
    .line 226
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDown;->b2:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    move p4, v2

    .line 238
    :goto_0
    if-ge p4, p3, :cond_8

    .line 239
    .line 240
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    add-int/lit8 p4, p4, 0x1

    .line 245
    .line 246
    check-cast v0, Ljava/lang/String;

    .line 247
    .line 248
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 249
    .line 250
    iget-object v5, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 251
    .line 252
    invoke-static {v5, v0}, Lcom/mycompany/app/main/MainUri;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-direct {v3, v2, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_8
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 266
    .line 267
    sget p3, Lnet/kaki87/soul2/testing/R$string;->direct_select:I

    .line 268
    .line 269
    invoke-direct {p2, v2, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 276
    .line 277
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 278
    .line 279
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 280
    .line 281
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 282
    .line 283
    new-instance v6, Lcom/mycompany/app/setting/SettingDown$8;

    .line 284
    .line 285
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDown$8;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 286
    .line 287
    .line 288
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 289
    .line 290
    .line 291
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDown;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 292
    .line 293
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 294
    .line 295
    return-void

    .line 296
    :cond_9
    :goto_1
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :pswitch_8
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 305
    .line 306
    if-eqz p2, :cond_a

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_a
    if-eqz p2, :cond_b

    .line 310
    .line 311
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 312
    .line 313
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 314
    .line 315
    .line 316
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 317
    .line 318
    :cond_b
    if-eqz p1, :cond_d

    .line 319
    .line 320
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 321
    .line 322
    if-nez p2, :cond_c

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .line 329
    .line 330
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 331
    .line 332
    sget p3, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 333
    .line 334
    invoke-direct {p2, v2, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 341
    .line 342
    sget p3, Lnet/kaki87/soul2/testing/R$string;->other_app:I

    .line 343
    .line 344
    invoke-direct {p2, v0, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 351
    .line 352
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 353
    .line 354
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 355
    .line 356
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 357
    .line 358
    new-instance v6, Lcom/mycompany/app/setting/SettingDown$10;

    .line 359
    .line 360
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingDown$10;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 361
    .line 362
    .line 363
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 364
    .line 365
    .line 366
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 367
    .line 368
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 369
    .line 370
    :cond_d
    :goto_2
    return-void

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
