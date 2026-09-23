.class public Lcom/mycompany/app/setting/SettingCustom;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final h2:[I


# instance fields
.field public X1:Ljava/lang/String;

.field public Y1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogSetFull;

.field public c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

.field public d2:Lcom/mycompany/app/dialog/DialogSetAddr;

.field public e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public f2:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public g2:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->domain_name:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$string;->title:I

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O0(Landroid/content/Context;)Z
    .locals 9

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
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    :cond_1
    sput-boolean v5, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 32
    .line 33
    sput-boolean v5, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 34
    .line 35
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 36
    .line 37
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v6, "mShowStatus"

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "mShowNavi"

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v6, "mFixTop"

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v6, "mFixBot"

    .line 59
    .line 60
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget v4, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 67
    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    sget v4, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    :cond_3
    sput v0, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 75
    .line 76
    sput v0, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 77
    .line 78
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v6, "mWebLand1"

    .line 83
    .line 84
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v6, "mWebLand2"

    .line 88
    .line 89
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 93
    .line 94
    .line 95
    :cond_4
    sget v4, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 96
    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    sput v0, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 100
    .line 101
    const/4 v4, 0x7

    .line 102
    const-string v6, "mAddrType2"

    .line 103
    .line 104
    invoke-static {p0, v4, v6}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move v4, v5

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move v4, v0

    .line 110
    :goto_0
    sget-object v6, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 111
    .line 112
    const-string v7, "0,1,2"

    .line 113
    .line 114
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_6

    .line 119
    .line 120
    sput-object v7, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 121
    .line 122
    const-string v6, "mAddrItems2"

    .line 123
    .line 124
    invoke-static {p0, v2, v6}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f5()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/4 v6, 0x2

    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    move v2, v5

    .line 135
    goto :goto_1

    .line 136
    :cond_7
    move v2, v6

    .line 137
    :goto_1
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 138
    .line 139
    const/16 v8, 0xe

    .line 140
    .line 141
    if-ne v7, v2, :cond_8

    .line 142
    .line 143
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 144
    .line 145
    if-eq v7, v8, :cond_9

    .line 146
    .line 147
    :cond_8
    sput v2, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 148
    .line 149
    sput v8, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 150
    .line 151
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const-string v4, "mSugEng"

    .line 156
    .line 157
    invoke-virtual {v2, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v4, "mSugType3"

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 166
    .line 167
    .line 168
    move v4, v5

    .line 169
    :cond_9
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 170
    .line 171
    const/16 v7, 0x10

    .line 172
    .line 173
    if-nez v2, :cond_a

    .line 174
    .line 175
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 176
    .line 177
    const-string v2, "mAutoComp"

    .line 178
    .line 179
    invoke-static {p0, v7, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    move v4, v5

    .line 183
    :cond_a
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 184
    .line 185
    const/16 v8, 0x14

    .line 186
    .line 187
    if-eq v2, v8, :cond_b

    .line 188
    .line 189
    sput v8, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 190
    .line 191
    const-string v2, "mRecentLimit"

    .line 192
    .line 193
    invoke-static {p0, v7, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iput-boolean v5, v2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 201
    .line 202
    move v4, v5

    .line 203
    :cond_b
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 204
    .line 205
    if-eqz v2, :cond_d

    .line 206
    .line 207
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 208
    .line 209
    const-string v2, "mRecentSecret"

    .line 210
    .line 211
    invoke-static {p0, v7, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 215
    .line 216
    if-eqz v2, :cond_c

    .line 217
    .line 218
    invoke-static {p0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iput-boolean v5, v2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 223
    .line 224
    :cond_c
    move v4, v5

    .line 225
    :cond_d
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->H:Z

    .line 226
    .line 227
    if-eqz v2, :cond_e

    .line 228
    .line 229
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->H:Z

    .line 230
    .line 231
    const/16 v2, 0x11

    .line 232
    .line 233
    const-string v4, "mHandIcon"

    .line 234
    .line 235
    invoke-static {p0, v2, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    move v4, v5

    .line 239
    :cond_e
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 240
    .line 241
    if-nez v2, :cond_f

    .line 242
    .line 243
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 244
    .line 245
    if-ne v2, v1, :cond_f

    .line 246
    .line 247
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 248
    .line 249
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_10

    .line 254
    .line 255
    :cond_f
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 256
    .line 257
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 258
    .line 259
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 260
    .line 261
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->R:I

    .line 266
    .line 267
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const-string v2, "mHandAlpha"

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v2, "mHandColor"

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v2, "mHandPos"

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 287
    .line 288
    .line 289
    move v4, v5

    .line 290
    :cond_10
    sget v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 291
    .line 292
    const/16 v2, 0x3c

    .line 293
    .line 294
    if-eq v1, v2, :cond_11

    .line 295
    .line 296
    sput v2, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 297
    .line 298
    const/16 v1, 0xc

    .line 299
    .line 300
    const-string v2, "mHandTop2"

    .line 301
    .line 302
    invoke-static {p0, v1, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_11
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 306
    .line 307
    const/16 v2, 0xf

    .line 308
    .line 309
    if-nez v1, :cond_12

    .line 310
    .line 311
    sput-boolean v5, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 312
    .line 313
    const-string v1, "mPullRefresh"

    .line 314
    .line 315
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move v4, v5

    .line 319
    :cond_12
    sget v1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 320
    .line 321
    if-eq v1, v6, :cond_13

    .line 322
    .line 323
    sput v6, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 324
    .line 325
    const-string v1, "mShowUpPos"

    .line 326
    .line 327
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :cond_13
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 331
    .line 332
    const/16 v3, 0x19

    .line 333
    .line 334
    if-eq v1, v3, :cond_14

    .line 335
    .line 336
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 337
    .line 338
    const-string v1, "mUpAlpha"

    .line 339
    .line 340
    invoke-static {p0, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :cond_14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_15

    .line 348
    .line 349
    move v1, v5

    .line 350
    goto :goto_2

    .line 351
    :cond_15
    const/4 v1, 0x3

    .line 352
    :goto_2
    sget v3, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 353
    .line 354
    if-eq v3, v1, :cond_16

    .line 355
    .line 356
    sput v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 357
    .line 358
    const-string v1, "mScrollPos"

    .line 359
    .line 360
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    move v4, v5

    .line 364
    :cond_16
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->B:Z

    .line 365
    .line 366
    if-eqz v1, :cond_17

    .line 367
    .line 368
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->B:Z

    .line 369
    .line 370
    const-string v1, "mVolScroll"

    .line 371
    .line 372
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    move v4, v5

    .line 376
    :cond_17
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->D:Z

    .line 377
    .line 378
    if-eqz v1, :cond_18

    .line 379
    .line 380
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->D:Z

    .line 381
    .line 382
    const-string v0, "mScrollAnim"

    .line 383
    .line 384
    invoke-static {p0, v7, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_18
    move v5, v4

    .line 389
    :goto_3
    invoke-static {p0}, Lcom/mycompany/app/setting/SettingFloat;->P0(Landroid/content/Context;)Z

    .line 390
    .line 391
    .line 392
    return v5
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 23

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v8, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v8, v2

    .line 10
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 11
    .line 12
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 13
    .line 14
    invoke-static {v0, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 15
    .line 16
    .line 17
    move-result v12

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 24
    .line 25
    invoke-direct {v3, v2, v1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 32
    .line 33
    sget v15, Lnet/kaki87/soul2/testing/R$string;->full_tool:I

    .line 34
    .line 35
    const/16 v17, 0x0

    .line 36
    .line 37
    const/16 v18, 0x1

    .line 38
    .line 39
    const/4 v14, 0x1

    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 49
    .line 50
    sget v16, Lnet/kaki87/soul2/testing/R$string;->land_mode:I

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    const/16 v19, 0x0

    .line 55
    .line 56
    const/4 v15, 0x2

    .line 57
    invoke-direct/range {v14 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 64
    .line 65
    sget v17, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 66
    .line 67
    const/16 v20, 0x2

    .line 68
    .line 69
    const/16 v16, 0x3

    .line 70
    .line 71
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 78
    .line 79
    const/4 v3, 0x4

    .line 80
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 87
    .line 88
    sget v15, Lnet/kaki87/soul2/testing/R$string;->address_label:I

    .line 89
    .line 90
    sget-object v1, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 91
    .line 92
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 93
    .line 94
    aget v16, v1, v3

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/16 v18, 0x1

    .line 99
    .line 100
    const/4 v14, 0x5

    .line 101
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance v14, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 108
    .line 109
    sget v16, Lnet/kaki87/soul2/testing/R$string;->address_icon:I

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    const/4 v15, 0x6

    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    invoke-direct/range {v14 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 123
    .line 124
    sget v17, Lnet/kaki87/soul2/testing/R$string;->search_suggest:I

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/mycompany/app/setting/SettingCustom;->Q0()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v18

    .line 130
    const/16 v20, 0x0

    .line 131
    .line 132
    const/16 v16, 0x7

    .line 133
    .line 134
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 141
    .line 142
    sget v18, Lnet/kaki87/soul2/testing/R$string;->auto_comp:I

    .line 143
    .line 144
    sget-boolean v21, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 145
    .line 146
    const/16 v22, 0x1

    .line 147
    .line 148
    const/16 v20, 0x2

    .line 149
    .line 150
    const/16 v17, 0x8

    .line 151
    .line 152
    invoke-direct/range {v16 .. v22}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v1, v16

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 161
    .line 162
    const/16 v3, 0x9

    .line 163
    .line 164
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 171
    .line 172
    sget v15, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 173
    .line 174
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 175
    .line 176
    move-object/from16 v11, p0

    .line 177
    .line 178
    invoke-virtual {v11, v1}, Lcom/mycompany/app/setting/SettingCustom;->P0(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v16

    .line 182
    const/16 v17, 0x0

    .line 183
    .line 184
    const/16 v18, 0x1

    .line 185
    .line 186
    const/16 v14, 0xa

    .line 187
    .line 188
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 195
    .line 196
    sget v5, Lnet/kaki87/soul2/testing/R$string;->recent_secret:I

    .line 197
    .line 198
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 199
    .line 200
    const/4 v10, 0x2

    .line 201
    const/16 v4, 0xb

    .line 202
    .line 203
    const/4 v6, 0x0

    .line 204
    move v9, v8

    .line 205
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 212
    .line 213
    const/16 v3, 0xc

    .line 214
    .line 215
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 222
    .line 223
    sget v6, Lnet/kaki87/soul2/testing/R$string;->onehand_icon:I

    .line 224
    .line 225
    sget v7, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 226
    .line 227
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZtri;->H:Z

    .line 228
    .line 229
    const/4 v10, 0x1

    .line 230
    const/4 v8, 0x1

    .line 231
    const/16 v5, 0xd

    .line 232
    .line 233
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 240
    .line 241
    sget v11, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 242
    .line 243
    const/4 v13, 0x0

    .line 244
    const/4 v14, 0x0

    .line 245
    const/16 v10, 0xe

    .line 246
    .line 247
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 254
    .line 255
    sget v5, Lnet/kaki87/soul2/testing/R$string;->onehand_area:I

    .line 256
    .line 257
    const/4 v7, 0x0

    .line 258
    const/4 v8, 0x2

    .line 259
    const/16 v4, 0xf

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 269
    .line 270
    const/16 v3, 0x10

    .line 271
    .line 272
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 279
    .line 280
    sget v6, Lnet/kaki87/soul2/testing/R$string;->pull_refresh:I

    .line 281
    .line 282
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 283
    .line 284
    const/4 v10, 0x1

    .line 285
    const/4 v8, 0x1

    .line 286
    const/16 v5, 0x11

    .line 287
    .line 288
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 295
    .line 296
    sget v7, Lnet/kaki87/soul2/testing/R$string;->show_up:I

    .line 297
    .line 298
    const/4 v9, 0x0

    .line 299
    const/4 v10, 0x0

    .line 300
    const/16 v6, 0x12

    .line 301
    .line 302
    const/4 v8, 0x0

    .line 303
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 310
    .line 311
    sget v8, Lnet/kaki87/soul2/testing/R$string;->show_scroll:I

    .line 312
    .line 313
    sget-object v1, Lcom/mycompany/app/main/MainConst;->N:[I

    .line 314
    .line 315
    sget v3, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 316
    .line 317
    aget v9, v1, v3

    .line 318
    .line 319
    const/4 v11, 0x0

    .line 320
    const/16 v7, 0x13

    .line 321
    .line 322
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 329
    .line 330
    sget v9, Lnet/kaki87/soul2/testing/R$string;->vol_scroll:I

    .line 331
    .line 332
    sget-boolean v12, Lcom/mycompany/app/pref/PrefZone;->B:Z

    .line 333
    .line 334
    const/4 v13, 0x1

    .line 335
    const/16 v8, 0x14

    .line 336
    .line 337
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 344
    .line 345
    sget v10, Lnet/kaki87/soul2/testing/R$string;->use_scroll_anim:I

    .line 346
    .line 347
    sget-boolean v13, Lcom/mycompany/app/pref/PrefZtwo;->D:Z

    .line 348
    .line 349
    const/4 v14, 0x1

    .line 350
    const/4 v12, 0x2

    .line 351
    const/16 v9, 0x15

    .line 352
    .line 353
    invoke-direct/range {v8 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 354
    .line 355
    .line 356
    const/16 v1, 0x16

    .line 357
    .line 358
    invoke-static {v0, v8, v1, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 359
    .line 360
    .line 361
    return-object v0
.end method

.method public final P0(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_zero:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    const-string v0, ""

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final Q0()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->duckduckgo:I

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ne v0, v3, :cond_2

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$string;->google:I

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 49
    .line 50
    and-int/2addr v2, v3

    .line 51
    const-string v4, ", "

    .line 52
    .line 53
    if-ne v2, v3, :cond_4

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :goto_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_4
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    and-int/2addr v2, v3

    .line 79
    if-ne v2, v3, :cond_6

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :goto_2
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_6
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 102
    .line 103
    const/16 v3, 0x8

    .line 104
    .line 105
    and-int/2addr v2, v3

    .line 106
    if-ne v2, v3, :cond_8

    .line 107
    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :goto_3
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_8
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 129
    .line 130
    const/16 v3, 0x10

    .line 131
    .line 132
    and-int/2addr v2, v3

    .line 133
    if-ne v2, v3, :cond_a

    .line 134
    .line 135
    if-nez v0, :cond_9

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :goto_4
    sget v2, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 147
    .line 148
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :cond_a
    if-nez v0, :cond_b

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method

.method public final R0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->d2:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSetFull;->B(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const/16 v0, 0x8

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_4
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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "EXTRA_PATH"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom;->X1:Ljava/lang/String;

    .line 15
    .line 16
    sget p1, Lnet/kaki87/soul2/testing/R$string;->composition:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 21
    .line 22
    .line 23
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingCustom$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingCustom$1;-><init>(Lcom/mycompany/app/setting/SettingCustom;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->X1:Ljava/lang/String;

    .line 6
    .line 7
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
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetFull;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->b2:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetSuggest;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->c2:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->d2:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAddr;->dismiss()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->d2:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->e2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 55
    .line 56
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditUp;->dismiss()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->g2:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 64
    .line 65
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 75
    .line 76
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 86
    .line 87
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 88
    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingCustom;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 97
    .line 98
    :cond_8
    return-void
.end method
