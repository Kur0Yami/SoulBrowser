.class Lcom/mycompany/app/setting/SettingVideo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideo$4;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 9

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingVideo;->b2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideo$4;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 4
    .line 5
    const/16 p4, 0xd

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p2, v0, :cond_13

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p2, v2, :cond_12

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq p2, v2, :cond_d

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    if-eq p2, v2, :cond_c

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    if-eq p2, v2, :cond_b

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eq p2, v2, :cond_a

    .line 27
    .line 28
    const/16 p3, 0x9

    .line 29
    .line 30
    if-eq p2, p3, :cond_7

    .line 31
    .line 32
    const/16 p3, 0xb

    .line 33
    .line 34
    if-eq p2, p3, :cond_6

    .line 35
    .line 36
    if-eq p2, p4, :cond_0

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingVideo;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iput-object v3, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideo;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 54
    .line 55
    :cond_2
    if-eqz p1, :cond_11

    .line 56
    .line 57
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 58
    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_3
    move p2, v4

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object p3, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 70
    .line 71
    array-length p3, p3

    .line 72
    move p4, p2

    .line 73
    :goto_0
    if-ge p4, p3, :cond_5

    .line 74
    .line 75
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 76
    .line 77
    aget v2, v2, p4

    .line 78
    .line 79
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 80
    .line 81
    sget-object v5, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 82
    .line 83
    aget v5, v5, v2

    .line 84
    .line 85
    sget v6, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 86
    .line 87
    if-ne v6, v2, :cond_4

    .line 88
    .line 89
    move v2, v0

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v2, p2

    .line 92
    :goto_1
    invoke-direct {v3, p4, v5, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 p4, p4, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 102
    .line 103
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 104
    .line 105
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 106
    .line 107
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 108
    .line 109
    new-instance v6, Lcom/mycompany/app/setting/SettingVideo$6;

    .line 110
    .line 111
    invoke-direct {v6, v1, p3}, Lcom/mycompany/app/setting/SettingVideo$6;-><init>(Lcom/mycompany/app/setting/SettingVideo;I)V

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVideo;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 118
    .line 119
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_6
    new-instance p1, Landroid/content/Intent;

    .line 123
    .line 124
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 125
    .line 126
    const-class p3, Lcom/mycompany/app/setting/SettingVideoTap;

    .line 127
    .line 128
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_7
    move p2, v4

    .line 136
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingVideo;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_8
    if-eqz p1, :cond_9

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 145
    .line 146
    .line 147
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideo;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 148
    .line 149
    :cond_9
    new-instance p1, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 150
    .line 151
    sget p3, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 152
    .line 153
    new-instance p4, Lcom/mycompany/app/setting/SettingVideo$7;

    .line 154
    .line 155
    invoke-direct {p4, v1}, Lcom/mycompany/app/setting/SettingVideo$7;-><init>(Lcom/mycompany/app/setting/SettingVideo;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, v1, p2, p3, p4}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 159
    .line 160
    .line 161
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingVideo;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 162
    .line 163
    new-instance p2, Lcom/mycompany/app/setting/SettingVideo$8;

    .line 164
    .line 165
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingVideo$8;-><init>(Lcom/mycompany/app/setting/SettingVideo;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_a
    sput-boolean p3, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 173
    .line 174
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 175
    .line 176
    const-string p2, "mDragSeek"

    .line 177
    .line 178
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 182
    .line 183
    if-eqz p1, :cond_11

    .line 184
    .line 185
    sget-boolean p2, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 186
    .line 187
    xor-int/lit8 v7, p2, 0x1

    .line 188
    .line 189
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 190
    .line 191
    sget v3, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 192
    .line 193
    sget p2, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 194
    .line 195
    invoke-static {p2}, Lcom/mycompany/app/setting/SettingVideo;->P0(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const/4 v4, 0x0

    .line 200
    const/4 v5, 0x2

    .line 201
    const/16 v2, 0x9

    .line 202
    .line 203
    move v8, v7

    .line 204
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;ZZ)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_b
    sput-boolean p3, Lcom/mycompany/app/pref/PrefVideo;->q:Z

    .line 212
    .line 213
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 214
    .line 215
    const-string p2, "mDragVolume"

    .line 216
    .line 217
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_c
    sput-boolean p3, Lcom/mycompany/app/pref/PrefVideo;->r:Z

    .line 222
    .line 223
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 224
    .line 225
    const-string p2, "mDragBright"

    .line 226
    .line 227
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_d
    move p2, v4

    .line 232
    iget-object p3, v1, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 233
    .line 234
    if-eqz p3, :cond_e

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_e
    if-eqz p3, :cond_f

    .line 238
    .line 239
    iput-object v3, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 240
    .line 241
    invoke-virtual {p3}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 242
    .line 243
    .line 244
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 245
    .line 246
    :cond_f
    if-eqz p1, :cond_11

    .line 247
    .line 248
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 249
    .line 250
    if-nez p3, :cond_10

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 259
    .line 260
    sget p4, Lnet/kaki87/soul2/testing/R$string;->video_icon_tap:I

    .line 261
    .line 262
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 263
    .line 264
    xor-int/2addr v2, v0

    .line 265
    invoke-direct {p3, p2, p4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 272
    .line 273
    sget p3, Lnet/kaki87/soul2/testing/R$string;->video_icon_long:I

    .line 274
    .line 275
    sget-boolean p4, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 276
    .line 277
    invoke-direct {p2, v0, p3, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 284
    .line 285
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 286
    .line 287
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 288
    .line 289
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 290
    .line 291
    new-instance v6, Lcom/mycompany/app/setting/SettingVideo$5;

    .line 292
    .line 293
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingVideo$5;-><init>(Lcom/mycompany/app/setting/SettingVideo;)V

    .line 294
    .line 295
    .line 296
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 297
    .line 298
    .line 299
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 300
    .line 301
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 302
    .line 303
    :cond_11
    :goto_2
    return-void

    .line 304
    :cond_12
    sput-boolean p3, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 305
    .line 306
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 307
    .line 308
    const-string p2, "mCutOut"

    .line 309
    .line 310
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_13
    sput-boolean p3, Lcom/mycompany/app/pref/PrefVideo;->m:Z

    .line 315
    .line 316
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 317
    .line 318
    const-string p2, "mPipHome"

    .line 319
    .line 320
    invoke-static {p4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    return-void
.end method
