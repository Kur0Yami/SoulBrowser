.class Lcom/mycompany/app/setting/SettingNews$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$4;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingNews$4;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    goto/16 :goto_2

    .line 13
    .line 14
    :pswitch_1
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingNews;->W0()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingNews;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 27
    .line 28
    .line 29
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingNews;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 30
    .line 31
    :cond_1
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 32
    .line 33
    new-instance p2, Lcom/mycompany/app/setting/SettingNews$15;

    .line 34
    .line 35
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingNews$15;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1, v0, p2}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingNews;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 42
    .line 43
    new-instance p2, Lcom/mycompany/app/setting/SettingNews$16;

    .line 44
    .line 45
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingNews$16;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_2
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtri;->C:Z

    .line 53
    .line 54
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 55
    .line 56
    const/16 p2, 0x11

    .line 57
    .line 58
    const-string p4, "mNewsIcon"

    .line 59
    .line 60
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3
    invoke-virtual {v1, p1, v3}, Lcom/mycompany/app/setting/SettingNews;->X0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_4
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    if-eqz p2, :cond_3

    .line 75
    .line 76
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 79
    .line 80
    .line 81
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 82
    .line 83
    :cond_3
    if-eqz p1, :cond_f

    .line 84
    .line 85
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 86
    .line 87
    if-nez p2, :cond_4

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 97
    .line 98
    sget p3, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 99
    .line 100
    invoke-direct {p2, v2, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 107
    .line 108
    sget p3, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 109
    .line 110
    invoke-direct {p2, v3, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 117
    .line 118
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 119
    .line 120
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 121
    .line 122
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 123
    .line 124
    new-instance v6, Lcom/mycompany/app/setting/SettingNews$11;

    .line 125
    .line 126
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingNews$11;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 130
    .line 131
    .line 132
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 133
    .line 134
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_5
    invoke-virtual {v1, p1, v2}, Lcom/mycompany/app/setting/SettingNews;->X0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_6
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingNews;->W0()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_5
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingNews;->U0()V

    .line 150
    .line 151
    .line 152
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingNews;->X1:[Ljava/lang/String;

    .line 153
    .line 154
    if-nez p1, :cond_6

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_6
    new-instance p1, Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 159
    .line 160
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingNews;->X1:[Ljava/lang/String;

    .line 161
    .line 162
    new-instance p3, Lcom/mycompany/app/setting/SettingNews$17;

    .line 163
    .line 164
    invoke-direct {p3, v1}, Lcom/mycompany/app/setting/SettingNews$17;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, v1, p2, p3}, Lcom/mycompany/app/dialog/DialogNewsLocale;-><init>(Lcom/mycompany/app/main/MainActivity;[Ljava/lang/String;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 168
    .line 169
    .line 170
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingNews;->g2:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 171
    .line 172
    new-instance p2, Lcom/mycompany/app/setting/SettingNews$18;

    .line 173
    .line 174
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingNews$18;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 175
    .line 176
    .line 177
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 178
    .line 179
    new-instance p2, Lcom/mycompany/app/setting/SettingNews$19;

    .line 180
    .line 181
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingNews$19;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_7
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 189
    .line 190
    if-eqz p2, :cond_7

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_7
    if-eqz p2, :cond_8

    .line 195
    .line 196
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 199
    .line 200
    .line 201
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 202
    .line 203
    :cond_8
    if-eqz p1, :cond_f

    .line 204
    .line 205
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 206
    .line 207
    if-nez p2, :cond_9

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    move p2, v2

    .line 217
    :goto_0
    if-ge p2, v0, :cond_b

    .line 218
    .line 219
    sget-object p3, Lcom/mycompany/app/setting/SettingNews;->o2:[I

    .line 220
    .line 221
    aget p3, p3, p2

    .line 222
    .line 223
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 224
    .line 225
    sget-object v5, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 226
    .line 227
    aget v5, v5, p3

    .line 228
    .line 229
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 230
    .line 231
    if-ne v6, p3, :cond_a

    .line 232
    .line 233
    move p3, v3

    .line 234
    goto :goto_1

    .line 235
    :cond_a
    move p3, v2

    .line 236
    :goto_1
    invoke-direct {p4, p2, v5, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    add-int/lit8 p2, p2, 0x1

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_b
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 246
    .line 247
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 248
    .line 249
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 250
    .line 251
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 252
    .line 253
    new-instance v6, Lcom/mycompany/app/setting/SettingNews$12;

    .line 254
    .line 255
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingNews$12;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 256
    .line 257
    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 259
    .line 260
    .line 261
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 262
    .line 263
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 264
    .line 265
    return-void

    .line 266
    :pswitch_8
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingNews;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 267
    .line 268
    if-eqz p2, :cond_c

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_c
    if-eqz p2, :cond_d

    .line 272
    .line 273
    iput-object p4, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 276
    .line 277
    .line 278
    iput-object p4, v1, Lcom/mycompany/app/setting/SettingNews;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 279
    .line 280
    :cond_d
    if-eqz p1, :cond_f

    .line 281
    .line 282
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 283
    .line 284
    if-nez p2, :cond_e

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_e
    sget-object p2, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    xor-int/lit8 p3, p2, 0x1

    .line 294
    .line 295
    new-instance v4, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 301
    .line 302
    sget v0, Lnet/kaki87/soul2/testing/R$string;->news_info_2:I

    .line 303
    .line 304
    invoke-direct {p4, v2, v0, p2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 311
    .line 312
    sget p4, Lnet/kaki87/soul2/testing/R$string;->direct_input:I

    .line 313
    .line 314
    invoke-direct {p2, v3, p4, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 321
    .line 322
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 323
    .line 324
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 325
    .line 326
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 327
    .line 328
    new-instance v6, Lcom/mycompany/app/setting/SettingNews$6;

    .line 329
    .line 330
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingNews$6;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 331
    .line 332
    .line 333
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 334
    .line 335
    .line 336
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingNews;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 337
    .line 338
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 339
    .line 340
    :cond_f
    :goto_2
    return-void

    .line 341
    :pswitch_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 342
    .line 343
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 344
    .line 345
    const/16 p2, 0x10

    .line 346
    .line 347
    const-string p4, "mNewsUse"

    .line 348
    .line 349
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
