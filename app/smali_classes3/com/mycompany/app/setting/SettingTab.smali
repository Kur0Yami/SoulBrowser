.class public Lcom/mycompany/app/setting/SettingTab;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic g2:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

.field public b2:Lcom/mycompany/app/dialog/DialogSetOpen;

.field public c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

.field public d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

.field public e2:Lcom/mycompany/app/dialog/DialogSetItem;

.field public f2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O0(Lcom/mycompany/app/setting/SettingTab;II)V
    .locals 3

    .line 1
    if-ltz p2, :cond_5

    .line 2
    .line 3
    const/16 v0, 0x4b

    .line 4
    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x6

    .line 19
    const/16 v1, 0xe

    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 24
    .line 25
    if-ne v0, p2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    sput p2, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    const-string v2, "mTabSwipeUp3"

    .line 33
    .line 34
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 39
    .line 40
    if-ne v0, p2, :cond_4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    sput p2, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    const-string v2, "mTabSwipeDn3"

    .line 48
    .line 49
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 53
    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    return-void
.end method

.method public static P0(Landroid/content/Context;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    sget-object v3, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 11
    .line 12
    aget v3, v3, v2

    .line 13
    .line 14
    sget-boolean v4, Lcom/mycompany/app/pref/PrefTts;->D:Z

    .line 15
    .line 16
    const/16 v5, 0xc

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/pref/PrefTts;->D:Z

    .line 22
    .line 23
    const-string v4, "mTabLast"

    .line 24
    .line 25
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move v4, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v0

    .line 31
    :goto_0
    sget-boolean v7, Lcom/mycompany/app/pref/PrefTts;->v:Z

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    sput-boolean v0, Lcom/mycompany/app/pref/PrefTts;->v:Z

    .line 36
    .line 37
    const-string v4, "mAutoGroup"

    .line 38
    .line 39
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move v4, v6

    .line 43
    :cond_2
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 44
    .line 45
    const/16 v8, 0xe

    .line 46
    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 50
    .line 51
    const-string v4, "mTabBar2"

    .line 52
    .line 53
    invoke-static {p0, v8, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move v4, v6

    .line 57
    :cond_3
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 58
    .line 59
    if-nez v7, :cond_4

    .line 60
    .line 61
    sput-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 62
    .line 63
    const-string v7, "mTabAccent"

    .line 64
    .line 65
    invoke-static {p0, v8, v7}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 69
    .line 70
    if-eq v7, v2, :cond_5

    .line 71
    .line 72
    sput v2, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 73
    .line 74
    const-string v7, "mTabColor"

    .line 75
    .line 76
    invoke-static {p0, v8, v7}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    sget v7, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 80
    .line 81
    const/4 v9, 0x3

    .line 82
    if-ne v7, v9, :cond_6

    .line 83
    .line 84
    sget-boolean v7, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 85
    .line 86
    if-eqz v7, :cond_6

    .line 87
    .line 88
    sget v7, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 89
    .line 90
    sget v10, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 91
    .line 92
    if-ne v7, v10, :cond_6

    .line 93
    .line 94
    sget v7, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 95
    .line 96
    sget v10, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 97
    .line 98
    if-eq v7, v10, :cond_7

    .line 99
    .line 100
    :cond_6
    sput v9, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 101
    .line 102
    sput-boolean v6, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 103
    .line 104
    sget v7, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 105
    .line 106
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 107
    .line 108
    sget v7, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 109
    .line 110
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 111
    .line 112
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const-string v9, "mTabAdd"

    .line 117
    .line 118
    invoke-virtual {v7, v9}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v9, "mTabClose"

    .line 122
    .line 123
    invoke-virtual {v7, v9}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v9, "mTabWidth"

    .line 127
    .line 128
    invoke-virtual {v7, v9}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v9, "mTabHeight"

    .line 132
    .line 133
    invoke-virtual {v7, v9}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 137
    .line 138
    .line 139
    :cond_7
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->E:I

    .line 140
    .line 141
    if-nez v7, :cond_8

    .line 142
    .line 143
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->F:I

    .line 144
    .line 145
    if-ne v7, v1, :cond_8

    .line 146
    .line 147
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->G:F

    .line 148
    .line 149
    invoke-static {v7, v3}, Ljava/lang/Float;->compare(FF)I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_9

    .line 154
    .line 155
    :cond_8
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->E:I

    .line 156
    .line 157
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->F:I

    .line 158
    .line 159
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->G:F

    .line 160
    .line 161
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->H:I

    .line 166
    .line 167
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v3, "mGridAlpha"

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v3, "mGridColor"

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v3, "mGridPos"

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 187
    .line 188
    .line 189
    :cond_9
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 190
    .line 191
    const/16 v3, 0x1e

    .line 192
    .line 193
    if-eq v1, v3, :cond_a

    .line 194
    .line 195
    sput v3, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 196
    .line 197
    const-string v1, "mTabSwipeUp3"

    .line 198
    .line 199
    invoke-static {p0, v8, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    move v4, v6

    .line 203
    :cond_a
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 204
    .line 205
    const/16 v3, 0x26

    .line 206
    .line 207
    if-eq v1, v3, :cond_b

    .line 208
    .line 209
    sput v3, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 210
    .line 211
    const-string v1, "mTabSwipeDn3"

    .line 212
    .line 213
    invoke-static {p0, v8, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    move v4, v6

    .line 217
    :cond_b
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->r:Z

    .line 218
    .line 219
    const/16 v3, 0x10

    .line 220
    .line 221
    if-eqz v1, :cond_c

    .line 222
    .line 223
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->r:Z

    .line 224
    .line 225
    const-string v1, "mTabIndi"

    .line 226
    .line 227
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    move v4, v6

    .line 231
    :cond_c
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->s:Z

    .line 232
    .line 233
    if-nez v1, :cond_d

    .line 234
    .line 235
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->s:Z

    .line 236
    .line 237
    const-string v1, "mTabLoop"

    .line 238
    .line 239
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    move v4, v6

    .line 243
    :cond_d
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 244
    .line 245
    if-nez v1, :cond_e

    .line 246
    .line 247
    sput-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 248
    .line 249
    const-string v1, "mTabRestore"

    .line 250
    .line 251
    invoke-static {p0, v8, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    move v4, v6

    .line 255
    :cond_e
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 256
    .line 257
    if-nez v1, :cond_f

    .line 258
    .line 259
    sput-boolean v6, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 260
    .line 261
    const-string v1, "mTabAnim"

    .line 262
    .line 263
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    move v4, v6

    .line 267
    :cond_f
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 268
    .line 269
    if-eqz v1, :cond_10

    .line 270
    .line 271
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 272
    .line 273
    const-string v1, "mTabOpen2"

    .line 274
    .line 275
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    move v4, v6

    .line 279
    :cond_10
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->B:Z

    .line 280
    .line 281
    if-eqz v1, :cond_11

    .line 282
    .line 283
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->B:Z

    .line 284
    .line 285
    const-string v1, "mTabKeypad"

    .line 286
    .line 287
    invoke-static {p0, v8, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    move v4, v6

    .line 291
    :cond_11
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->j:Z

    .line 292
    .line 293
    if-eqz v1, :cond_12

    .line 294
    .line 295
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->j:Z

    .line 296
    .line 297
    const/16 v1, 0xf

    .line 298
    .line 299
    const-string v3, "mHomeClose"

    .line 300
    .line 301
    invoke-static {p0, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    move v4, v6

    .line 305
    :cond_12
    sget-boolean v1, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 306
    .line 307
    if-eqz v1, :cond_13

    .line 308
    .line 309
    sput-boolean v0, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 310
    .line 311
    const-string v1, "mLastNoti"

    .line 312
    .line 313
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    move v4, v6

    .line 317
    :cond_13
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->n0:Z

    .line 318
    .line 319
    if-nez v1, :cond_14

    .line 320
    .line 321
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZtri;->n0:Z

    .line 322
    .line 323
    const/16 v1, 0x11

    .line 324
    .line 325
    const-string v2, "mLastSwipe"

    .line 326
    .line 327
    invoke-static {p0, v1, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    move v4, v6

    .line 331
    :cond_14
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 332
    .line 333
    if-eqz v1, :cond_15

    .line 334
    .line 335
    sput-boolean v0, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 336
    .line 337
    const-string v0, "mLastExit"

    .line 338
    .line 339
    invoke-static {p0, v5, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return v6

    .line 343
    :cond_15
    return v4
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 19

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$string;->tab_add_last:I

    .line 6
    .line 7
    :goto_0
    move v4, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$string;->tab_add_next:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->E:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget v0, Lnet/kaki87/soul2/testing/R$string;->app_exit:I

    .line 17
    .line 18
    :goto_2
    move v8, v0

    .line 19
    goto :goto_3

    .line 20
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->delete_tab:I

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v11, 0x0

    .line 32
    invoke-direct {v1, v11, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 39
    .line 40
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tab_add_pos:I

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x1

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 51
    .line 52
    sget v14, Lnet/kaki87/soul2/testing/R$string;->auto_group:I

    .line 53
    .line 54
    sget v15, Lnet/kaki87/soul2/testing/R$string;->auto_group_info:I

    .line 55
    .line 56
    sget-boolean v17, Lcom/mycompany/app/pref/PrefTts;->v:Z

    .line 57
    .line 58
    const/16 v18, 0x1

    .line 59
    .line 60
    const/16 v16, 0x2

    .line 61
    .line 62
    const/4 v13, 0x2

    .line 63
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-direct {v1, v2, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 79
    .line 80
    sget v14, Lnet/kaki87/soul2/testing/R$string;->show_tab_bar:I

    .line 81
    .line 82
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->D0:[I

    .line 83
    .line 84
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 85
    .line 86
    aget v15, v1, v2

    .line 87
    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v17, 0x1

    .line 91
    .line 92
    const/4 v13, 0x4

    .line 93
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 100
    .line 101
    sget v3, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v2, 0x5

    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 113
    .line 114
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_swipe_up:I

    .line 115
    .line 116
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 117
    .line 118
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v3, 0x6

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 131
    .line 132
    sget v14, Lnet/kaki87/soul2/testing/R$string;->tab_swipe_dn:I

    .line 133
    .line 134
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 135
    .line 136
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    const/16 v17, 0x2

    .line 141
    .line 142
    const/4 v13, 0x7

    .line 143
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 150
    .line 151
    const/16 v2, 0x8

    .line 152
    .line 153
    invoke-direct {v1, v2, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 160
    .line 161
    sget v14, Lnet/kaki87/soul2/testing/R$string;->tab_indicator:I

    .line 162
    .line 163
    sget v15, Lnet/kaki87/soul2/testing/R$string;->tab_indi_info:I

    .line 164
    .line 165
    sget-boolean v17, Lcom/mycompany/app/pref/PrefZtwo;->r:Z

    .line 166
    .line 167
    const/16 v16, 0x1

    .line 168
    .line 169
    const/16 v13, 0x9

    .line 170
    .line 171
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 178
    .line 179
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tab_loop:I

    .line 180
    .line 181
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_loop_info:I

    .line 182
    .line 183
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->s:Z

    .line 184
    .line 185
    const/4 v7, 0x1

    .line 186
    const/4 v5, 0x0

    .line 187
    const/16 v2, 0xa

    .line 188
    .line 189
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 196
    .line 197
    sget v14, Lnet/kaki87/soul2/testing/R$string;->use_tab_anim:I

    .line 198
    .line 199
    sget-boolean v17, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 200
    .line 201
    const/16 v16, 0x2

    .line 202
    .line 203
    const/16 v13, 0xb

    .line 204
    .line 205
    const/4 v15, 0x0

    .line 206
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 213
    .line 214
    const/16 v2, 0xc

    .line 215
    .line 216
    invoke-direct {v1, v2, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 223
    .line 224
    sget v14, Lnet/kaki87/soul2/testing/R$string;->undelete:I

    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/mycompany/app/setting/SettingTab;->R0()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    const/16 v16, 0x0

    .line 231
    .line 232
    const/16 v17, 0x1

    .line 233
    .line 234
    const/16 v13, 0xd

    .line 235
    .line 236
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 243
    .line 244
    sget v3, Lnet/kaki87/soul2/testing/R$string;->open_new_tab:I

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/mycompany/app/setting/SettingTab;->Q0()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    const/4 v6, 0x0

    .line 251
    const/16 v2, 0xe

    .line 252
    .line 253
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 260
    .line 261
    sget v14, Lnet/kaki87/soul2/testing/R$string;->tab_keyboard:I

    .line 262
    .line 263
    sget-boolean v17, Lcom/mycompany/app/pref/PrefWeb;->B:Z

    .line 264
    .line 265
    const/16 v13, 0xf

    .line 266
    .line 267
    const/4 v15, 0x0

    .line 268
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 275
    .line 276
    sget v3, Lnet/kaki87/soul2/testing/R$string;->home_close:I

    .line 277
    .line 278
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZone;->j:Z

    .line 279
    .line 280
    const/4 v5, 0x2

    .line 281
    const/16 v2, 0x10

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 291
    .line 292
    const/16 v2, 0x11

    .line 293
    .line 294
    invoke-direct {v1, v2, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 301
    .line 302
    sget v14, Lnet/kaki87/soul2/testing/R$string;->last_noti:I

    .line 303
    .line 304
    sget v15, Lnet/kaki87/soul2/testing/R$string;->last_noti_info:I

    .line 305
    .line 306
    sget-boolean v17, Lcom/mycompany/app/pref/PrefMain;->n:Z

    .line 307
    .line 308
    const/16 v16, 0x1

    .line 309
    .line 310
    const/16 v13, 0x12

    .line 311
    .line 312
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 319
    .line 320
    sget v3, Lnet/kaki87/soul2/testing/R$string;->last_swipe:I

    .line 321
    .line 322
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtri;->n0:Z

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    const/16 v2, 0x13

    .line 326
    .line 327
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 334
    .line 335
    sget v7, Lnet/kaki87/soul2/testing/R$string;->last_exit:I

    .line 336
    .line 337
    const/4 v9, 0x0

    .line 338
    const/4 v10, 0x2

    .line 339
    const/16 v6, 0x14

    .line 340
    .line 341
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 342
    .line 343
    .line 344
    const/16 v1, 0x15

    .line 345
    .line 346
    invoke-static {v0, v5, v1, v11}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 347
    .line 348
    .line 349
    return-object v0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/16 v2, 0x3e

    .line 8
    .line 9
    const-string v3, ", "

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget v1, Lnet/kaki87/soul2/testing/R$string;->link:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget v1, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget v1, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_1
    const/4 v2, 0x2

    .line 81
    and-int/2addr v0, v2

    .line 82
    if-ne v0, v2, :cond_2

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    sget v2, Lnet/kaki87/soul2/testing/R$string;->link:I

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    move-object v0, v1

    .line 100
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 101
    .line 102
    const/4 v4, 0x4

    .line 103
    and-int/2addr v2, v4

    .line 104
    if-ne v2, v4, :cond_4

    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :goto_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_4
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 127
    .line 128
    const/16 v4, 0x8

    .line 129
    .line 130
    and-int/2addr v2, v4

    .line 131
    if-ne v2, v4, :cond_6

    .line 132
    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :goto_2
    sget v2, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_6
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 154
    .line 155
    const/16 v4, 0x10

    .line 156
    .line 157
    and-int/2addr v2, v4

    .line 158
    if-ne v2, v4, :cond_8

    .line 159
    .line 160
    if-nez v0, :cond_7

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :goto_3
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_8
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 181
    .line 182
    const/16 v4, 0x20

    .line 183
    .line 184
    and-int/2addr v2, v4

    .line 185
    if-ne v2, v4, :cond_a

    .line 186
    .line 187
    if-nez v0, :cond_9

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :goto_4
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_a
    if-nez v0, :cond_b

    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    return-object v0
.end method

.method public final R0()Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_list:I

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget v0, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    sget v0, Lnet/kaki87/soul2/testing/R$string;->tab_list:I

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method public final S0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->b2:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final T0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :cond_0
    :goto_0
    move-object v2, p0

    .line 6
    goto :goto_1

    .line 7
    :cond_1
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_2
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$string;->do_change:I

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 44
    .line 45
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 54
    .line 55
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 56
    .line 57
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 58
    .line 59
    new-instance v7, Lcom/mycompany/app/setting/SettingTab$7;

    .line 60
    .line 61
    invoke-direct {v7, p0, p2}, Lcom/mycompany/app/setting/SettingTab$7;-><init>(Lcom/mycompany/app/setting/SettingTab;I)V

    .line 62
    .line 63
    .line 64
    move-object v2, p0

    .line 65
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 69
    .line 70
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->e0:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->e0:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingTab$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingTab$1;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabRestore;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->a2:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->b2:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetOpen;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->b2:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabPos;->dismiss()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->c2:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->dismiss()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->d2:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->e2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 55
    .line 56
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 66
    .line 67
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 77
    .line 78
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTab;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 88
    .line 89
    :cond_7
    return-void
.end method
