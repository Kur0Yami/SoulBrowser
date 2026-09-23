.class public Lcom/mycompany/app/dialog/DialogSetFilter;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;
    }
.end annotation


# static fields
.field public static final p0:[[Ljava/lang/String;

.field public static final q0:[[Ljava/lang/String;

.field public static final r0:[[Ljava/lang/String;


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;

.field public final d0:Z

.field public e0:[Z

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Landroid/widget/ImageView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyButtonCheck;

.field public k0:Lcom/mycompany/app/view/MyRecyclerView;

.field public l0:Lcom/mycompany/app/view/MyLineText;

.field public m0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public n0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public o0:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    new-array v0, v0, [[Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "EasyList"

    .line 6
    .line 7
    const-string v2, "https://easylist-downloads.adblockplus.org/easylist.txt"

    .line 8
    .line 9
    const-string v3, "abp"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v1, v0, v5

    .line 18
    .line 19
    const-string v1, "EasyPrivacy"

    .line 20
    .line 21
    const-string v6, "https://easylist-downloads.adblockplus.org/easyprivacy.txt"

    .line 22
    .line 23
    filled-new-array {v1, v6, v3, v4}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v7, 0x1

    .line 28
    aput-object v1, v0, v7

    .line 29
    .line 30
    const-string v1, "EasyList Cookie List"

    .line 31
    .line 32
    const-string v8, "https://easylist-downloads.adblockplus.org/fanboy-cookiemonster.txt"

    .line 33
    .line 34
    filled-new-array {v1, v8, v3, v4}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v9, 0x2

    .line 39
    aput-object v1, v0, v9

    .line 40
    .line 41
    const-string v1, "Fanboy\'s Annoyance List"

    .line 42
    .line 43
    const-string v10, "https://easylist-downloads.adblockplus.org/fanboy-annoyance.txt"

    .line 44
    .line 45
    filled-new-array {v1, v10, v3, v4}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v11, 0x3

    .line 50
    aput-object v1, v0, v11

    .line 51
    .line 52
    const-string v1, "Fanboy\'s Notifications Blocking List"

    .line 53
    .line 54
    const-string v12, "https://easylist-downloads.adblockplus.org/fanboy-notifications.txt"

    .line 55
    .line 56
    filled-new-array {v1, v12, v3, v4}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v12, 0x4

    .line 61
    aput-object v1, v0, v12

    .line 62
    .line 63
    const-string v1, "Fanboy\'s Social Blocking List"

    .line 64
    .line 65
    const-string v13, "https://easylist-downloads.adblockplus.org/fanboy-social.txt"

    .line 66
    .line 67
    filled-new-array {v1, v13, v3, v4}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v14, 0x5

    .line 72
    aput-object v1, v0, v14

    .line 73
    .line 74
    const-string v1, "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt"

    .line 75
    .line 76
    const-string v15, "https://github.com/abp-filters/abp-filters-anti-cv"

    .line 77
    .line 78
    move/from16 v16, v5

    .line 79
    .line 80
    const-string v5, "ABP filters"

    .line 81
    .line 82
    filled-new-array {v5, v1, v15, v4}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v5, 0x6

    .line 87
    aput-object v1, v0, v5

    .line 88
    .line 89
    const-string v1, "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/cpbl-abp-list.txt"

    .line 90
    .line 91
    const-string v15, "https://git.io/JTTLB"

    .line 92
    .line 93
    move/from16 v17, v5

    .line 94
    .line 95
    const-string v5, "CPBL Filters for Adblock Plus"

    .line 96
    .line 97
    filled-new-array {v5, v1, v15, v4}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const/4 v5, 0x7

    .line 102
    aput-object v1, v0, v5

    .line 103
    .line 104
    const-string v1, "https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/nocoin.txt"

    .line 105
    .line 106
    const-string v15, "https://github.com/hoshsadiq/adblock-nocoin-list"

    .line 107
    .line 108
    move/from16 v18, v5

    .line 109
    .line 110
    const-string v5, "NoCoin"

    .line 111
    .line 112
    filled-new-array {v5, v1, v15, v4}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/16 v5, 0x8

    .line 117
    .line 118
    aput-object v1, v0, v5

    .line 119
    .line 120
    const-string v1, "https://raw.githubusercontent.com/Spam404/lists/master/adblock-list.txt"

    .line 121
    .line 122
    const-string v15, "https://www.spam404.com"

    .line 123
    .line 124
    move/from16 v19, v5

    .line 125
    .line 126
    const-string v5, "Spam404"

    .line 127
    .line 128
    filled-new-array {v5, v1, v15, v4}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const/16 v4, 0x9

    .line 133
    .line 134
    aput-object v1, v0, v4

    .line 135
    .line 136
    const-string v1, "https://github.com/ABPindo/indonesianadblockrules"

    .line 137
    .line 138
    const-string v5, "Bahasa Indonesia, Melayu"

    .line 139
    .line 140
    const-string v15, "ABPindo"

    .line 141
    .line 142
    move/from16 v20, v4

    .line 143
    .line 144
    const-string v4, "https://easylist-downloads.adblockplus.org/abpindo.txt"

    .line 145
    .line 146
    filled-new-array {v15, v4, v1, v5}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/16 v5, 0xa

    .line 151
    .line 152
    aput-object v1, v0, v5

    .line 153
    .line 154
    const-string v1, "https://adblock.sk"

    .line 155
    .line 156
    const-string v15, "\u010ce\u0161tina, Sloven\u010dina"

    .line 157
    .line 158
    move/from16 v21, v5

    .line 159
    .line 160
    const-string v5, "EasyList Czech and Slovak"

    .line 161
    .line 162
    move/from16 v22, v7

    .line 163
    .line 164
    const-string v7, "https://raw.github.com/tomasko126/easylistczechandslovak/master/filters.txt"

    .line 165
    .line 166
    filled-new-array {v5, v7, v1, v15}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const/16 v5, 0xb

    .line 171
    .line 172
    aput-object v1, v0, v5

    .line 173
    .line 174
    const-string v1, "https://easylist-downloads.adblockplus.org/easylistgermany.txt"

    .line 175
    .line 176
    const-string v7, "Deutsch"

    .line 177
    .line 178
    const-string v15, "EasyList Germany"

    .line 179
    .line 180
    filled-new-array {v15, v1, v3, v7}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const/16 v7, 0xc

    .line 185
    .line 186
    aput-object v1, v0, v7

    .line 187
    .line 188
    const-string v1, "https://github.com/evenxzero/Raajje-AdList"

    .line 189
    .line 190
    const-string v15, "Dhivehi"

    .line 191
    .line 192
    move/from16 v23, v5

    .line 193
    .line 194
    const-string v5, "Raajje Adlist"

    .line 195
    .line 196
    move/from16 v24, v9

    .line 197
    .line 198
    const-string v9, "https://raw.githubusercontent.com/evenxzero/Raajje-AdList/master/filter.txt"

    .line 199
    .line 200
    filled-new-array {v5, v9, v1, v15}, [Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const/16 v5, 0xd

    .line 205
    .line 206
    aput-object v1, v0, v5

    .line 207
    .line 208
    const-string v1, "https://adblock.ee"

    .line 209
    .line 210
    const-string v5, "Eesti keel"

    .line 211
    .line 212
    const-string v9, "Eesti saitidele kohandatud filter"

    .line 213
    .line 214
    const-string v15, "https://adblock.ee/list.php"

    .line 215
    .line 216
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const/16 v5, 0xe

    .line 221
    .line 222
    aput-object v1, v0, v5

    .line 223
    .line 224
    const-string v1, "https://gurud.ee"

    .line 225
    .line 226
    const-string v5, "Eesti keel"

    .line 227
    .line 228
    const-string v9, "Estonian filters by Gurud.ee"

    .line 229
    .line 230
    const-string v15, "https://gurud.ee/ab.txt"

    .line 231
    .line 232
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const/16 v5, 0xf

    .line 237
    .line 238
    aput-object v1, v0, v5

    .line 239
    .line 240
    const-string v1, "https://pgl.yoyo.org/adservers"

    .line 241
    .line 242
    const-string v5, "English"

    .line 243
    .line 244
    const-string v9, "Peter Lowe\'s list"

    .line 245
    .line 246
    const-string v15, "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus&mimetype=plaintext"

    .line 247
    .line 248
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const/16 v5, 0x10

    .line 253
    .line 254
    aput-object v1, v0, v5

    .line 255
    .line 256
    const-string v1, "Colombian filters by yecarrillo"

    .line 257
    .line 258
    const-string v5, "https://raw.githubusercontent.com/yecarrillo/adblock-colombia/master/adblock_co.txt"

    .line 259
    .line 260
    const-string v9, "https://github.com/yecarrillo/adblock-colombia"

    .line 261
    .line 262
    const-string v15, "Espa\u00f1ol"

    .line 263
    .line 264
    filled-new-array {v1, v5, v9, v15}, [Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    const/16 v5, 0x11

    .line 269
    .line 270
    aput-object v1, v0, v5

    .line 271
    .line 272
    const-string v1, "EasyList Spanish"

    .line 273
    .line 274
    const-string v5, "https://easylist-downloads.adblockplus.org/easylistspanish.txt"

    .line 275
    .line 276
    filled-new-array {v1, v5, v3, v15}, [Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const/16 v5, 0x12

    .line 281
    .line 282
    aput-object v1, v0, v5

    .line 283
    .line 284
    const-string v1, "https://raw.githubusercontent.com/Xaival/AdBlockList/main/Adblock_list.txt"

    .line 285
    .line 286
    const-string v5, "https://github.com/Xaival/AdBlockList"

    .line 287
    .line 288
    const-string v9, "Tiswagos Liri AdBlockList"

    .line 289
    .line 290
    filled-new-array {v9, v1, v5, v15}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    const/16 v5, 0x13

    .line 295
    .line 296
    aput-object v1, v0, v5

    .line 297
    .line 298
    const-string v1, "https://forums.lanik.us/viewforum.php?f=91"

    .line 299
    .line 300
    const-string v5, "Fran\u00e7ais"

    .line 301
    .line 302
    const-string v9, "Liste FR"

    .line 303
    .line 304
    const-string v15, "https://easylist-downloads.adblockplus.org/liste_fr.txt"

    .line 305
    .line 306
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const/16 v5, 0x14

    .line 311
    .line 312
    aput-object v1, v0, v5

    .line 313
    .line 314
    const-string v1, "https://easylist-downloads.adblockplus.org/easylistitaly.txt"

    .line 315
    .line 316
    const-string v5, "Italiano"

    .line 317
    .line 318
    const-string v9, "EasyList Italy"

    .line 319
    .line 320
    filled-new-array {v9, v1, v3, v5}, [Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const/16 v5, 0x15

    .line 325
    .line 326
    aput-object v1, v0, v5

    .line 327
    .line 328
    const-string v1, "https://xfiles.noads.it"

    .line 329
    .line 330
    const-string v5, "Italiano"

    .line 331
    .line 332
    const-string v9, "Xfiles"

    .line 333
    .line 334
    const-string v15, "https://raw.githubusercontent.com/gioxx/xfiles/master/filtri.txt"

    .line 335
    .line 336
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const/16 v5, 0x16

    .line 341
    .line 342
    aput-object v1, v0, v5

    .line 343
    .line 344
    const-string v1, "https://github.com/Latvian-List/adblock-latvian"

    .line 345
    .line 346
    const-string v5, "Latvie\u0161u valoda"

    .line 347
    .line 348
    const-string v9, "Latvian List"

    .line 349
    .line 350
    const-string v15, "https://raw.githubusercontent.com/Latvian-List/adblock-latvian/master/lists/latvian-list.txt"

    .line 351
    .line 352
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    const/16 v5, 0x17

    .line 357
    .line 358
    aput-object v1, v0, v5

    .line 359
    .line 360
    const-string v1, "https://github.com/EasyList-Lithuania/easylist_lithuania"

    .line 361
    .line 362
    const-string v5, "Lietuvi\u0173 kalba"

    .line 363
    .line 364
    const-string v9, "EasyList Lithuania"

    .line 365
    .line 366
    const-string v15, "https://easylist-downloads.adblockplus.org/easylistlithuania.txt"

    .line 367
    .line 368
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    const/16 v5, 0x18

    .line 373
    .line 374
    aput-object v1, v0, v5

    .line 375
    .line 376
    const-string v1, "https://github.com/hufilter/hufilter/wiki"

    .line 377
    .line 378
    const-string v5, "Magyar"

    .line 379
    .line 380
    const-string v9, "hufilter"

    .line 381
    .line 382
    const-string v15, "https://raw.githubusercontent.com/hufilter/hufilter/refs/heads/gh-pages/hufilter-abp.txt"

    .line 383
    .line 384
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    const/16 v5, 0x19

    .line 389
    .line 390
    aput-object v1, v0, v5

    .line 391
    .line 392
    const-string v1, "https://easylist-downloads.adblockplus.org/easylistdutch.txt"

    .line 393
    .line 394
    const-string v5, "Nederlands"

    .line 395
    .line 396
    const-string v9, "EasyList Dutch"

    .line 397
    .line 398
    filled-new-array {v9, v1, v3, v5}, [Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const/16 v5, 0x1a

    .line 403
    .line 404
    aput-object v1, v0, v5

    .line 405
    .line 406
    const-string v1, "https://github.com/DandelionSprout/adfilt"

    .line 407
    .line 408
    const-string v5, "Norsk, Norsk, Norsk, Dansk, \u00cdslenska, F\u00f8royskt, Kalaallisut"

    .line 409
    .line 410
    const-string v9, "Dandelion Sprout\'s Nordic Filters"

    .line 411
    .line 412
    const-string v15, "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/NorwegianExperimentalList%20alternate%20versions/NordicFiltersABP-Inclusion.txt"

    .line 413
    .line 414
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const/16 v5, 0x1b

    .line 419
    .line 420
    aput-object v1, v0, v5

    .line 421
    .line 422
    const-string v1, "https://easylist-downloads.adblockplus.org/easylistpolish.txt"

    .line 423
    .line 424
    const-string v5, "Polski"

    .line 425
    .line 426
    const-string v9, "EasyList Polish"

    .line 427
    .line 428
    filled-new-array {v9, v1, v3, v5}, [Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    const/16 v5, 0x1c

    .line 433
    .line 434
    aput-object v1, v0, v5

    .line 435
    .line 436
    const-string v1, "https://easylist-downloads.adblockplus.org/easylistportuguese.txt"

    .line 437
    .line 438
    const-string v5, "Portugu\u00eas"

    .line 439
    .line 440
    const-string v9, "EasyList Portuguese"

    .line 441
    .line 442
    filled-new-array {v9, v1, v3, v5}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    const/16 v5, 0x1d

    .line 447
    .line 448
    aput-object v1, v0, v5

    .line 449
    .line 450
    const-string v1, "https://forums.lanik.us/viewforum.php?f=102"

    .line 451
    .line 452
    const-string v5, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439, \u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    .line 453
    .line 454
    const-string v9, "RU AdList"

    .line 455
    .line 456
    const-string v15, "https://easylist-downloads.adblockplus.org/advblock.txt"

    .line 457
    .line 458
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    const/16 v5, 0x1e

    .line 463
    .line 464
    aput-object v1, v0, v5

    .line 465
    .line 466
    const-string v1, "https://zoso.ro/rolist"

    .line 467
    .line 468
    const-string v5, "Rom\u00e2nesc"

    .line 469
    .line 470
    const-string v9, "ROList"

    .line 471
    .line 472
    const-string v15, "https://easylist-downloads.adblockplus.org/rolist.txt"

    .line 473
    .line 474
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    const/16 v5, 0x1f

    .line 479
    .line 480
    aput-object v1, v0, v5

    .line 481
    .line 482
    const-string v1, "https://abpvn.com"

    .line 483
    .line 484
    const-string v5, "Ti\u1ebfng Vi\u1ec7t"

    .line 485
    .line 486
    const-string v9, "ABPVN List"

    .line 487
    .line 488
    const-string v15, "https://easylist-downloads.adblockplus.org/abpvn.txt"

    .line 489
    .line 490
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    const/16 v5, 0x20

    .line 495
    .line 496
    aput-object v1, v0, v5

    .line 497
    .line 498
    const-string v1, "https://github.com/kargig/greek-adblockplus-filter"

    .line 499
    .line 500
    const-string v5, "\u03b5\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    .line 501
    .line 502
    const-string v9, "void.gr"

    .line 503
    .line 504
    const-string v15, "https://www.void.gr/kargig/void-gr-filters.txt"

    .line 505
    .line 506
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    const/16 v5, 0x21

    .line 511
    .line 512
    aput-object v1, v0, v5

    .line 513
    .line 514
    const-string v1, "https://stanev.org/abp"

    .line 515
    .line 516
    const-string v5, "\u0431\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    .line 517
    .line 518
    const-string v9, "Bulgarian list"

    .line 519
    .line 520
    const-string v15, "https://stanev.org/abp/adblock_bg.txt"

    .line 521
    .line 522
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    const/16 v5, 0x22

    .line 527
    .line 528
    aput-object v1, v0, v5

    .line 529
    .line 530
    const-string v1, "https://github.com/easylist/EasyListHebrew"

    .line 531
    .line 532
    const-string v5, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    .line 533
    .line 534
    const-string v9, "EasyList Hebrew"

    .line 535
    .line 536
    const-string v15, "https://raw.githubusercontent.com/easylist/EasyListHebrew/master/EasyListHebrew.txt"

    .line 537
    .line 538
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    const/16 v5, 0x23

    .line 543
    .line 544
    aput-object v1, v0, v5

    .line 545
    .line 546
    const-string v1, "https://code.google.com/p/liste-ar-adblock"

    .line 547
    .line 548
    const-string v5, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    .line 549
    .line 550
    const-string v9, "Liste AR"

    .line 551
    .line 552
    const-string v15, "https://easylist-downloads.adblockplus.org/Liste_AR.txt"

    .line 553
    .line 554
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    const/16 v5, 0x24

    .line 559
    .line 560
    aput-object v1, v0, v5

    .line 561
    .line 562
    const-string v1, "https://github.com/SlashArash/adblockfa"

    .line 563
    .line 564
    const-string v5, "\u0641\u0627\u0631\u0633\u06cc"

    .line 565
    .line 566
    const-string v9, "AdBlockFarsi"

    .line 567
    .line 568
    const-string v15, "https://raw.githubusercontent.com/SlashArash/adblockfa/master/adblockfa.txt"

    .line 569
    .line 570
    filled-new-array {v9, v15, v1, v5}, [Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    const/16 v5, 0x25

    .line 575
    .line 576
    aput-object v1, v0, v5

    .line 577
    .line 578
    const-string v1, "https://easylist-downloads.adblockplus.org/indianlist.txt"

    .line 579
    .line 580
    const-string v5, "\u09ac\u09be\u0982\u09b2\u09be (\u09ad\u09be\u09b0\u09a4), \u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0 (\u0aad\u0abe\u0ab0\u0aa4), \u092d\u093e\u0930\u0924\u0940\u092f, \u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40 (\u0a2d\u0a3e\u0a30\u0a24), \u0985\u09b8\u09ae\u09c0\u09af\u09bc\u09be, \u092e\u0930\u093e\u0920\u0940, \u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02, \u0c24\u0c46\u0c32\u0c41\u0c17\u0c41, \u0c95\u0ca8\u0ccd\u0ca8\u0ca1, \u0b13\u0b21\u0b3c\u0b3f\u0b06, \u0928\u0947\u092a\u093e\u0932\u0940, \u0dc3\u0dd2\u0d82\u0dc4\u0dbd"

    .line 581
    .line 582
    const-string v9, "IndianList"

    .line 583
    .line 584
    filled-new-array {v9, v1, v3, v5}, [Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    const/16 v3, 0x26

    .line 589
    .line 590
    aput-object v1, v0, v3

    .line 591
    .line 592
    const-string v1, "https://github.com/easylist/easylistchina"

    .line 593
    .line 594
    const-string v3, "\u4e2d\u6587"

    .line 595
    .line 596
    const-string v5, "EasyList China"

    .line 597
    .line 598
    const-string v9, "https://easylist-downloads.adblockplus.org/easylistchina.txt"

    .line 599
    .line 600
    filled-new-array {v5, v9, v1, v3}, [Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    const/16 v3, 0x27

    .line 605
    .line 606
    aput-object v1, v0, v3

    .line 607
    .line 608
    const-string v1, "https://github.com/cjx82630/cjxlist"

    .line 609
    .line 610
    const-string v3, "Removes self-promotion and privacy protection, \u4e2d\u6587"

    .line 611
    .line 612
    const-string v5, "CJX\'s Annoyance List"

    .line 613
    .line 614
    const-string v9, "https://easylist-downloads.adblockplus.org/cjx-annoyance.txt"

    .line 615
    .line 616
    filled-new-array {v5, v9, v1, v3}, [Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    const/16 v3, 0x28

    .line 621
    .line 622
    aput-object v1, v0, v3

    .line 623
    .line 624
    const-string v1, "https://github.com/k2jp/abp-japanese-filters"

    .line 625
    .line 626
    const-string v3, "\u65e5\u672c\u8a9e"

    .line 627
    .line 628
    const-string v5, "ABP Japanese Filters"

    .line 629
    .line 630
    const-string v9, "https://raw.githubusercontent.com/k2jp/abp-japanese-filters/master/abpjf.txt"

    .line 631
    .line 632
    filled-new-array {v5, v9, v1, v3}, [Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    const/16 v3, 0x29

    .line 637
    .line 638
    aput-object v1, v0, v3

    .line 639
    .line 640
    const-string v1, "https://forums.lanik.us/viewforum.php?f=111"

    .line 641
    .line 642
    const-string v3, "\ud55c\uad6d\uc5b4"

    .line 643
    .line 644
    const-string v5, "KoreanList"

    .line 645
    .line 646
    const-string v9, "https://easylist-downloads.adblockplus.org/koreanlist.txt"

    .line 647
    .line 648
    filled-new-array {v5, v9, v1, v3}, [Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    const/16 v3, 0x2a

    .line 653
    .line 654
    aput-object v1, v0, v3

    .line 655
    .line 656
    const-string v1, "https://github.com/yous/YousList"

    .line 657
    .line 658
    const-string v3, "\ud55c\uad6d\uc5b4"

    .line 659
    .line 660
    const-string v5, "YousList"

    .line 661
    .line 662
    const-string v9, "https://raw.githubusercontent.com/yous/YousList/master/youslist.txt"

    .line 663
    .line 664
    filled-new-array {v5, v9, v1, v3}, [Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    const/16 v3, 0x2b

    .line 669
    .line 670
    aput-object v1, v0, v3

    .line 671
    .line 672
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 673
    .line 674
    const/16 v0, 0x12

    .line 675
    .line 676
    new-array v0, v0, [[Ljava/lang/String;

    .line 677
    .line 678
    const-string v1, "Base filter"

    .line 679
    .line 680
    const-string v3, "filter_2_Base"

    .line 681
    .line 682
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    aput-object v1, v0, v16

    .line 687
    .line 688
    const-string v1, "Mobile ads filter"

    .line 689
    .line 690
    const-string v3, "filter_11_Mobile"

    .line 691
    .line 692
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    aput-object v1, v0, v22

    .line 697
    .line 698
    const-string v1, "Annoyances filter"

    .line 699
    .line 700
    const-string v3, "filter_14_Annoyances"

    .line 701
    .line 702
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    aput-object v1, v0, v24

    .line 707
    .line 708
    const-string v1, "DNS filter"

    .line 709
    .line 710
    const-string v3, "filter_15_DnsFilter"

    .line 711
    .line 712
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    aput-object v1, v0, v11

    .line 717
    .line 718
    const-string v1, "Filter unblocking search ads and self-promotions"

    .line 719
    .line 720
    const-string v3, "filter_10_Useful"

    .line 721
    .line 722
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    aput-object v1, v0, v12

    .line 727
    .line 728
    const-string v1, "Social media filter"

    .line 729
    .line 730
    const-string v3, "filter_4_Social"

    .line 731
    .line 732
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    aput-object v1, v0, v14

    .line 737
    .line 738
    const-string v1, "Tracking Protection filter"

    .line 739
    .line 740
    const-string v3, "filter_3_Spyware"

    .line 741
    .line 742
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    aput-object v1, v0, v17

    .line 747
    .line 748
    const-string v1, "URL Tracking filter"

    .line 749
    .line 750
    const-string v3, "filter_17_TrackParam"

    .line 751
    .line 752
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    aput-object v1, v0, v18

    .line 757
    .line 758
    const-string v1, "Experimental filter"

    .line 759
    .line 760
    const-string v3, "filter_5_Experimental"

    .line 761
    .line 762
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    aput-object v1, v0, v19

    .line 767
    .line 768
    const-string v1, "Chinese filter"

    .line 769
    .line 770
    const-string v3, "filter_224_Chinese"

    .line 771
    .line 772
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    aput-object v1, v0, v20

    .line 777
    .line 778
    const-string v1, "Dutch filter"

    .line 779
    .line 780
    const-string v3, "filter_8_Dutch"

    .line 781
    .line 782
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    aput-object v1, v0, v21

    .line 787
    .line 788
    const-string v1, "French filter"

    .line 789
    .line 790
    const-string v3, "filter_16_French"

    .line 791
    .line 792
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    aput-object v1, v0, v23

    .line 797
    .line 798
    const-string v1, "German filter"

    .line 799
    .line 800
    const-string v3, "filter_6_German"

    .line 801
    .line 802
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    aput-object v1, v0, v7

    .line 807
    .line 808
    const-string v1, "Japanese filter"

    .line 809
    .line 810
    const-string v3, "filter_7_Japanese"

    .line 811
    .line 812
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    const/16 v3, 0xd

    .line 817
    .line 818
    aput-object v1, v0, v3

    .line 819
    .line 820
    const-string v1, "Russian filter"

    .line 821
    .line 822
    const-string v3, "filter_1_Russian"

    .line 823
    .line 824
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    const/16 v3, 0xe

    .line 829
    .line 830
    aput-object v1, v0, v3

    .line 831
    .line 832
    const-string v1, "Spanish/Portuguese filter"

    .line 833
    .line 834
    const-string v3, "filter_9_Spanish"

    .line 835
    .line 836
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    const/16 v3, 0xf

    .line 841
    .line 842
    aput-object v1, v0, v3

    .line 843
    .line 844
    const-string v1, "Turkish filter"

    .line 845
    .line 846
    const-string v3, "filter_13_Turkish"

    .line 847
    .line 848
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    const/16 v3, 0x10

    .line 853
    .line 854
    aput-object v1, v0, v3

    .line 855
    .line 856
    const-string v1, "Ukrainian filter"

    .line 857
    .line 858
    const-string v3, "filter_23_Ukrainian"

    .line 859
    .line 860
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    const/16 v3, 0x11

    .line 865
    .line 866
    aput-object v1, v0, v3

    .line 867
    .line 868
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetFilter;->q0:[[Ljava/lang/String;

    .line 869
    .line 870
    new-array v0, v7, [[Ljava/lang/String;

    .line 871
    .line 872
    const-string v1, "https://easylist.to/easylist/easylist.txt"

    .line 873
    .line 874
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    aput-object v1, v0, v16

    .line 879
    .line 880
    const-string v1, "https://easylist.to/easylist/easyprivacy.txt"

    .line 881
    .line 882
    filled-new-array {v1, v6}, [Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    aput-object v1, v0, v22

    .line 887
    .line 888
    const-string v1, "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt"

    .line 889
    .line 890
    filled-new-array {v1, v8}, [Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    aput-object v1, v0, v24

    .line 895
    .line 896
    const-string v1, "https://secure.fanboy.co.nz/fanboy-annoyance.txt"

    .line 897
    .line 898
    filled-new-array {v1, v10}, [Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    aput-object v1, v0, v11

    .line 903
    .line 904
    const-string v1, "https://easylist.to/easylist/fanboy-social.txt"

    .line 905
    .line 906
    filled-new-array {v1, v13}, [Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    aput-object v1, v0, v12

    .line 911
    .line 912
    const-string v1, "https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/subscriptions/abpindo.txt"

    .line 913
    .line 914
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v1

    .line 918
    aput-object v1, v0, v14

    .line 919
    .line 920
    const-string v1, "https://notabug.org/latvian-list/adblock-latvian/raw/master/lists/latvian-list.txt"

    .line 921
    .line 922
    const-string v2, "https://raw.githubusercontent.com/Latvian-List/adblock-latvian/master/lists/latvian-list.txt"

    .line 923
    .line 924
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    aput-object v1, v0, v17

    .line 929
    .line 930
    const-string v1, "https://raw.githubusercontent.com/EasyList-Lithuania/easylist_lithuania/master/easylistlithuania.txt"

    .line 931
    .line 932
    const-string v2, "https://easylist-downloads.adblockplus.org/easylistlithuania.txt"

    .line 933
    .line 934
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    aput-object v1, v0, v18

    .line 939
    .line 940
    const-string v1, "https://www.zoso.ro/pages/rolist.txt"

    .line 941
    .line 942
    const-string v2, "https://easylist-downloads.adblockplus.org/rolist.txt"

    .line 943
    .line 944
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    aput-object v1, v0, v19

    .line 949
    .line 950
    const-string v1, "https://raw.githubusercontent.com/abpvn/abpvn/master/filter/abpvn.txt"

    .line 951
    .line 952
    const-string v2, "https://easylist-downloads.adblockplus.org/abpvn.txt"

    .line 953
    .line 954
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    aput-object v1, v0, v20

    .line 959
    .line 960
    const-string v1, "https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt"

    .line 961
    .line 962
    const-string v2, "https://easylist-downloads.adblockplus.org/cjx-annoyance.txt"

    .line 963
    .line 964
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    aput-object v1, v0, v21

    .line 969
    .line 970
    const-string v1, "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_English/filter.txt"

    .line 971
    .line 972
    const-string v2, "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_Base/filter.txt"

    .line 973
    .line 974
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    aput-object v1, v0, v23

    .line 979
    .line 980
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetFilter;->r0:[[Ljava/lang/String;

    .line 981
    .line 982
    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->c0:Lcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->d0:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetFilter$1;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetFilter$1;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static B(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object v3, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 52
    .line 53
    if-eqz p0, :cond_5

    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    .line 69
    .line 70
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "_path"

    .line 74
    .line 75
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    filled-new-array {v1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "DbBookFilter_table"

    .line 91
    .line 92
    const-string v7, "_path=?"

    .line 93
    .line 94
    invoke-static {v5, v6, v3, v7, v4}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_1
    invoke-static {p0, v1}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p0, v2}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {p0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->w6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method public static C(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x12

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetFilter;->q0:[[Ljava/lang/String;

    .line 16
    .line 17
    aget-object p0, v1, p0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aget-object p0, p0, v1

    .line 21
    .line 22
    const-string v1, "/filter.txt"

    .line 23
    .line 24
    invoke-static {v0, p0, v1}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, "filter-AdGuard.txt"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "filter-uBlockOrigin.txt"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const-string v0, "https://raw.githubusercontent.com/"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string v0, "List-KR/List-KR/"

    .line 35
    .line 36
    const/16 v2, 0x22

    .line 37
    .line 38
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    const-string v0, "https://cdn.jsdelivr.net/gh/"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    const-string v0, "List-KR/List-KR@"

    .line 54
    .line 55
    const/16 v2, 0x1c

    .line 56
    .line 57
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    add-int/lit8 v2, v2, 0x10

    .line 65
    .line 66
    const-string v0, "master/"

    .line 67
    .line 68
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_4
    const-string v0, "latest/"

    .line 76
    .line 77
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_5
    return-object v1
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->c2(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "https://raw.githubusercontent.com/AdguardTeam/"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_0
    if-eqz v1, :cond_3

    .line 36
    .line 37
    move v1, v2

    .line 38
    :goto_1
    const/16 v4, 0x12

    .line 39
    .line 40
    if-ge v1, v4, :cond_5

    .line 41
    .line 42
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogSetFilter;->C(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v1, v2

    .line 57
    :goto_2
    const/16 v4, 0x2c

    .line 58
    .line 59
    if-ge v1, v4, :cond_5

    .line 60
    .line 61
    sget-object v4, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 62
    .line 63
    aget-object v4, v4, v1

    .line 64
    .line 65
    aget-object v4, v4, v3

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move v0, v2

    .line 78
    :goto_3
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetFilter;->r0:[[Ljava/lang/String;

    .line 79
    .line 80
    const/16 v4, 0xc

    .line 81
    .line 82
    if-ge v0, v4, :cond_7

    .line 83
    .line 84
    aget-object v5, v1, v0

    .line 85
    .line 86
    aget-object v5, v5, v2

    .line 87
    .line 88
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    const/4 v0, -0x1

    .line 99
    :goto_4
    if-ltz v0, :cond_9

    .line 100
    .line 101
    if-lt v0, v4, :cond_8

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    aget-object p0, v1, v0

    .line 105
    .line 106
    aget-object p0, p0, v3

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_9
    :goto_5
    const/4 p0, 0x0

    .line 110
    return-object p0
.end method


# virtual methods
.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    array-length v1, v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v6, v2

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    move v7, v5

    .line 17
    :goto_0
    if-ge v4, v1, :cond_2

    .line 18
    .line 19
    aget-boolean v8, v0, v4

    .line 20
    .line 21
    if-eqz v8, :cond_1

    .line 22
    .line 23
    add-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    move v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v6, v3

    .line 28
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 34
    .line 35
    array-length v1, v1

    .line 36
    invoke-static {v5, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 44
    .line 45
    invoke-virtual {v0, v6, p1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 46
    .line 47
    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const v0, -0x50506

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const v0, -0xe19938

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 73
    .line 74
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    const v0, -0x7f7f80

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const v0, -0x252526

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetFilter;->F()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->o0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->o0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 66
    .line 67
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->c0:Lcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->g0:Landroid/widget/ImageView;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
