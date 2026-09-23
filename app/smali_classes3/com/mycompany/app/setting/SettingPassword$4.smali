.class Lcom/mycompany/app/setting/SettingPassword$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPassword;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassword;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassword$4;->a:Lcom/mycompany/app/setting/SettingPassword;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingPassword;->b2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassword$4;->a:Lcom/mycompany/app/setting/SettingPassword;

    .line 4
    .line 5
    const/16 p4, 0x9

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p2, v0, :cond_14

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p2, v2, :cond_12

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq p2, v2, :cond_11

    .line 15
    .line 16
    const/4 p3, 0x4

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq p2, p3, :cond_c

    .line 19
    .line 20
    const/4 p3, 0x6

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq p2, p3, :cond_a

    .line 23
    .line 24
    const/4 p3, 0x7

    .line 25
    if-eq p2, p3, :cond_4

    .line 26
    .line 27
    if-eq p2, p4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_1
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->a2:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassword;->P0()V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/mycompany/app/dialog/DialogLockReset;

    .line 53
    .line 54
    new-instance p2, Lcom/mycompany/app/setting/SettingPassword$9;

    .line 55
    .line 56
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingPassword$9;-><init>(Lcom/mycompany/app/setting/SettingPassword;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v1, v0, p2}, Lcom/mycompany/app/dialog/DialogLockReset;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->a2:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 63
    .line 64
    new-instance p2, Lcom/mycompany/app/setting/SettingPassword$10;

    .line 65
    .line 66
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingPassword$10;-><init>(Lcom/mycompany/app/setting/SettingPassword;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 74
    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_5
    if-eqz p2, :cond_6

    .line 80
    .line 81
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 84
    .line 85
    .line 86
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    :cond_6
    if-eqz p1, :cond_15

    .line 89
    .line 90
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 91
    .line 92
    if-nez p2, :cond_7

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    sget-object p2, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 102
    .line 103
    array-length p2, p2

    .line 104
    move p3, v3

    .line 105
    :goto_0
    if-ge p3, p2, :cond_9

    .line 106
    .line 107
    sget-object p4, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 108
    .line 109
    aget p4, p4, p3

    .line 110
    .line 111
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 112
    .line 113
    sget-object v5, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 114
    .line 115
    aget v5, v5, p4

    .line 116
    .line 117
    sget v6, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 118
    .line 119
    if-ne v6, p4, :cond_8

    .line 120
    .line 121
    move p4, v0

    .line 122
    goto :goto_1

    .line 123
    :cond_8
    move p4, v3

    .line 124
    :goto_1
    invoke-direct {v2, p3, v5, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    add-int/lit8 p3, p3, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_9
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 134
    .line 135
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 136
    .line 137
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 138
    .line 139
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 140
    .line 141
    new-instance v6, Lcom/mycompany/app/setting/SettingPassword$5;

    .line 142
    .line 143
    invoke-direct {v6, v1, p2}, Lcom/mycompany/app/setting/SettingPassword$5;-><init>(Lcom/mycompany/app/setting/SettingPassword;I)V

    .line 144
    .line 145
    .line 146
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 150
    .line 151
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 152
    .line 153
    return-void

    .line 154
    :cond_a
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 155
    .line 156
    if-nez p1, :cond_b

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Lcom/mycompany/app/setting/SettingPassword;->R0(Z)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_b
    new-instance p1, Landroid/content/Intent;

    .line 163
    .line 164
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 165
    .line 166
    const-class p3, Lcom/mycompany/app/setting/SettingPassList;

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
    :cond_c
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 176
    .line 177
    if-eqz p1, :cond_d

    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_d
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 182
    .line 183
    if-eqz p1, :cond_e

    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :cond_e
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingPassword;->a2:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 188
    .line 189
    if-eqz p2, :cond_f

    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :cond_f
    if-eqz p1, :cond_10

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 196
    .line 197
    .line 198
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 199
    .line 200
    :cond_10
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 201
    .line 202
    new-instance p2, Lcom/mycompany/app/setting/SettingPassword$7;

    .line 203
    .line 204
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingPassword$7;-><init>(Lcom/mycompany/app/setting/SettingPassword;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p1, v1, p4, p2}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 208
    .line 209
    .line 210
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 211
    .line 212
    new-instance p2, Lcom/mycompany/app/setting/SettingPassword$8;

    .line 213
    .line 214
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingPassword$8;-><init>(Lcom/mycompany/app/setting/SettingPassword;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_11
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 222
    .line 223
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 224
    .line 225
    const/16 p2, 0x11

    .line 226
    .line 227
    const-string p4, "mPassIcon"

    .line 228
    .line 229
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_12
    if-eqz p3, :cond_13

    .line 234
    .line 235
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 236
    .line 237
    if-nez p1, :cond_13

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingPassword;->R0(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassword;->Q0()V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_13
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 247
    .line 248
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 249
    .line 250
    const-string p2, "mLoginLock"

    .line 251
    .line 252
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_14
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 257
    .line 258
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 259
    .line 260
    const-string p2, "mSavePass2"

    .line 261
    .line 262
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassword;->Q0()V

    .line 266
    .line 267
    .line 268
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 269
    .line 270
    if-eqz p1, :cond_15

    .line 271
    .line 272
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 273
    .line 274
    xor-int/lit8 v6, p1, 0x1

    .line 275
    .line 276
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 277
    .line 278
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 279
    .line 280
    invoke-static {p1, p2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 285
    .line 286
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 287
    .line 288
    sget v4, Lnet/kaki87/soul2/testing/R$string;->password_button:I

    .line 289
    .line 290
    sget v5, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 291
    .line 292
    move v7, v6

    .line 293
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 294
    .line 295
    const/4 v9, 0x0

    .line 296
    const/4 v3, 0x3

    .line 297
    move v8, v7

    .line 298
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 302
    .line 303
    .line 304
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 305
    .line 306
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 307
    .line 308
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 309
    .line 310
    const/4 v8, 0x2

    .line 311
    const/4 v3, 0x4

    .line 312
    move v6, v7

    .line 313
    move v5, p1

    .line 314
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZII)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 318
    .line 319
    .line 320
    :cond_15
    :goto_2
    return-void
.end method
