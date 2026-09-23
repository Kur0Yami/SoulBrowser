.class Lcom/mycompany/app/setting/SettingSecure$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSecure;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecure$5;->a:Lcom/mycompany/app/setting/SettingSecure;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 11

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSecure$5;->a:Lcom/mycompany/app/setting/SettingSecure;

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    if-eq p2, p4, :cond_17

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p2, v0, :cond_16

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p2, v0, :cond_15

    .line 13
    .line 14
    const/4 v0, 0x6

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eq p2, v0, :cond_e

    .line 18
    .line 19
    const/4 v0, 0x7

    .line 20
    const/16 v4, 0x9

    .line 21
    .line 22
    if-eq p2, v0, :cond_b

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-eq p2, v0, :cond_7

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    if-eq p2, v0, :cond_1

    .line 31
    .line 32
    const/16 p1, 0xb

    .line 33
    .line 34
    if-eq p2, p1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->r:Z

    .line 39
    .line 40
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 41
    .line 42
    const-string p2, "mShotSecret"

    .line 43
    .line 44
    invoke-static {v4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_2
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 59
    .line 60
    .line 61
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 62
    .line 63
    :cond_3
    if-eqz p1, :cond_14

    .line 64
    .line 65
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 66
    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lcom/mycompany/app/main/MainConst;->S:[I

    .line 77
    .line 78
    array-length p2, p2

    .line 79
    move p3, v3

    .line 80
    :goto_0
    if-ge p3, p2, :cond_6

    .line 81
    .line 82
    sget-object v0, Lcom/mycompany/app/main/MainConst;->S:[I

    .line 83
    .line 84
    aget v0, v0, p3

    .line 85
    .line 86
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 87
    .line 88
    sget-object v5, Lcom/mycompany/app/main/MainConst;->T:[I

    .line 89
    .line 90
    aget v5, v5, v0

    .line 91
    .line 92
    sget v6, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 93
    .line 94
    if-ne v6, v0, :cond_5

    .line 95
    .line 96
    move v0, p4

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    move v0, v3

    .line 99
    :goto_1
    invoke-direct {v2, p3, v5, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 p3, p3, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 109
    .line 110
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 111
    .line 112
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 113
    .line 114
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 115
    .line 116
    new-instance v6, Lcom/mycompany/app/setting/SettingSecure$8;

    .line 117
    .line 118
    invoke-direct {v6, v1, p2}, Lcom/mycompany/app/setting/SettingSecure$8;-><init>(Lcom/mycompany/app/setting/SettingSecure;I)V

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 125
    .line 126
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 130
    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    goto/16 :goto_5

    .line 134
    .line 135
    :cond_8
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 136
    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_9
    if-eqz p1, :cond_a

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetLock;->dismiss()V

    .line 144
    .line 145
    .line 146
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 147
    .line 148
    :cond_a
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 149
    .line 150
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetLock;

    .line 151
    .line 152
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogSetLock;-><init>(Landroid/app/Activity;)V

    .line 153
    .line 154
    .line 155
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 156
    .line 157
    new-instance p3, Lcom/mycompany/app/setting/SettingSecure$12;

    .line 158
    .line 159
    invoke-direct {p3, v1, p1}, Lcom/mycompany/app/setting/SettingSecure$12;-><init>(Lcom/mycompany/app/setting/SettingSecure;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_b
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 167
    .line 168
    if-ne p1, p3, :cond_c

    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :cond_c
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 173
    .line 174
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 175
    .line 176
    const-string p2, "mLockSecret2"

    .line 177
    .line 178
    invoke-static {v4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 182
    .line 183
    if-eqz p1, :cond_14

    .line 184
    .line 185
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 186
    .line 187
    if-nez p2, :cond_d

    .line 188
    .line 189
    move v9, p4

    .line 190
    goto :goto_2

    .line 191
    :cond_d
    move v9, v3

    .line 192
    :goto_2
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 193
    .line 194
    sget p2, Lnet/kaki87/soul2/testing/R$string;->lock_reset_target:I

    .line 195
    .line 196
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingSecure;->Q0()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 205
    .line 206
    invoke-static {p2}, Lcom/mycompany/app/setting/SettingSecure;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    const/4 v7, 0x2

    .line 211
    const/16 v6, 0x8

    .line 212
    .line 213
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v4}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_e
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 221
    .line 222
    if-eqz p2, :cond_f

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_f
    if-eqz p2, :cond_10

    .line 226
    .line 227
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 230
    .line 231
    .line 232
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 233
    .line 234
    :cond_10
    if-eqz p1, :cond_14

    .line 235
    .line 236
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 237
    .line 238
    if-nez p2, :cond_11

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    sget-object p2, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 247
    .line 248
    array-length p2, p2

    .line 249
    move p3, v3

    .line 250
    :goto_3
    if-ge p3, p2, :cond_13

    .line 251
    .line 252
    sget-object v0, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 253
    .line 254
    aget v0, v0, p3

    .line 255
    .line 256
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 257
    .line 258
    sget-object v5, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 259
    .line 260
    aget v5, v5, v0

    .line 261
    .line 262
    sget v6, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 263
    .line 264
    if-ne v6, v0, :cond_12

    .line 265
    .line 266
    move v0, p4

    .line 267
    goto :goto_4

    .line 268
    :cond_12
    move v0, v3

    .line 269
    :goto_4
    invoke-direct {v2, p3, v5, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    add-int/lit8 p3, p3, 0x1

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_13
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 279
    .line 280
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 281
    .line 282
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 283
    .line 284
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 285
    .line 286
    new-instance v6, Lcom/mycompany/app/setting/SettingSecure$9;

    .line 287
    .line 288
    invoke-direct {v6, v1, p2}, Lcom/mycompany/app/setting/SettingSecure$9;-><init>(Lcom/mycompany/app/setting/SettingSecure;I)V

    .line 289
    .line 290
    .line 291
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 292
    .line 293
    .line 294
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSecure;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 295
    .line 296
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 297
    .line 298
    :cond_14
    :goto_5
    return-void

    .line 299
    :cond_15
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingSecure;->R0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_16
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingSecure;->R0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_17
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/setting/SettingSecure;->R0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 308
    .line 309
    .line 310
    return-void
.end method
