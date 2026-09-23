.class Lcom/mycompany/app/setting/SettingMain$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$5;->a:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMain$5;->a:Lcom/mycompany/app/setting/SettingMain;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/16 v0, 0x20

    .line 13
    .line 14
    const-string v1, "EXTRA_TYPE"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const-string v3, "EXTRA_PATH"

    .line 18
    .line 19
    const-string v4, "EXTRA_INDEX"

    .line 20
    .line 21
    const-string v5, "EXTRA_NOTI"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    packed-switch p2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    :pswitch_0
    goto :goto_0

    .line 28
    :pswitch_1
    new-instance p2, Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    const-class v1, Lcom/mycompany/app/setting/SettingInfo;

    .line 33
    .line 34
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_2
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 50
    .line 51
    const-string p3, "android.intent.action.SENDTO"

    .line 52
    .line 53
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p3, "mailto:"

    .line 57
    .line 58
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string p3, "android.intent.extra.EMAIL"

    .line 66
    .line 67
    const-string p4, "soulbrowser.com@outlook.com"

    .line 68
    .line 69
    filled-new-array {p4}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string p3, "android.intent.extra.SUBJECT"

    .line 77
    .line 78
    sget p4, Lnet/kaki87/soul2/testing/R$string;->feedback:I

    .line 79
    .line 80
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string p3, "android.intent.extra.TEXT"

    .line 88
    .line 89
    iget-object p4, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 90
    .line 91
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p4, v0}, Lcom/mycompany/app/main/MainUtil;->H0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catch_0
    sget p2, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 105
    .line 106
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_1
    sget p2, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 111
    .line 112
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    :pswitch_3
    sget p2, Lnet/kaki87/soul2/testing/R$string;->app_name:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    const-string p3, "https://play.google.com/store/apps/details?id=net.kaki87.soul2.testing"

    .line 123
    .line 124
    invoke-static {p1, p3, p2}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_4
    const-string p2, "net.kaki87.soul2.testing"

    .line 129
    .line 130
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->Q4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_5
    new-instance p2, Landroid/content/Intent;

    .line 135
    .line 136
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 137
    .line 138
    const-class v1, Lcom/mycompany/app/setting/SettingVpn;

    .line 139
    .line 140
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    if-eqz p3, :cond_2

    .line 144
    .line 145
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    return-void

    :pswitch_warp
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const-class v1, Lcom/mycompany/app/warp/SettingWarp;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_warp

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_warp
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 155
    :pswitch_6
    new-instance p2, Landroid/content/Intent;

    .line 156
    .line 157
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 158
    .line 159
    const-class v1, Lcom/mycompany/app/setting/SettingPrivacy;

    .line 160
    .line 161
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .line 163
    .line 164
    if-eqz p3, :cond_3

    .line 165
    .line 166
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-virtual {p1, p2, v6}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_7
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 177
    .line 178
    if-eqz p2, :cond_4

    .line 179
    .line 180
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    const-string p3, "EXTRA_PASS"

    .line 187
    .line 188
    invoke-virtual {p2, p3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 199
    .line 200
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 201
    .line 202
    const-class v1, Lcom/mycompany/app/setting/SettingPassword;

    .line 203
    .line 204
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .line 206
    .line 207
    if-eqz p3, :cond_5

    .line 208
    .line 209
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    :cond_5
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_8
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 220
    .line 221
    if-nez p2, :cond_6

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_6
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 225
    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 229
    .line 230
    if-nez v0, :cond_7

    .line 231
    .line 232
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 233
    .line 234
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    const/4 p3, 0x5

    .line 242
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_7
    :goto_1
    new-instance p2, Landroid/content/Intent;

    .line 247
    .line 248
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 249
    .line 250
    const-class v1, Lcom/mycompany/app/setting/SettingSecret;

    .line 251
    .line 252
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .line 254
    .line 255
    if-eqz p3, :cond_8

    .line 256
    .line 257
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    :cond_8
    invoke-virtual {p1, p2, v6}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_9
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 268
    .line 269
    if-nez p2, :cond_9

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 273
    .line 274
    if-eqz v0, :cond_a

    .line 275
    .line 276
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 277
    .line 278
    if-nez v0, :cond_a

    .line 279
    .line 280
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 281
    .line 282
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    const/4 p3, 0x4

    .line 290
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_a
    :goto_2
    new-instance p2, Landroid/content/Intent;

    .line 295
    .line 296
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 297
    .line 298
    const-class v1, Lcom/mycompany/app/setting/SettingSecure;

    .line 299
    .line 300
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .line 302
    .line 303
    if-eqz p3, :cond_b

    .line 304
    .line 305
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_a
    new-instance p2, Landroid/content/Intent;

    .line 316
    .line 317
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 318
    .line 319
    const-class v1, Lcom/mycompany/app/setting/SettingCast;

    .line 320
    .line 321
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .line 323
    .line 324
    if-eqz p3, :cond_c

    .line 325
    .line 326
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    :cond_c
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :pswitch_b
    new-instance p2, Landroid/content/Intent;

    .line 337
    .line 338
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 339
    .line 340
    const-class v1, Lcom/mycompany/app/setting/SettingTts;

    .line 341
    .line 342
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .line 344
    .line 345
    if-eqz p3, :cond_d

    .line 346
    .line 347
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    :cond_d
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :pswitch_c
    new-instance p2, Landroid/content/Intent;

    .line 358
    .line 359
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 360
    .line 361
    const-class v1, Lcom/mycompany/app/setting/SettingTrans;

    .line 362
    .line 363
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .line 365
    .line 366
    if-eqz p3, :cond_e

    .line 367
    .line 368
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    .line 373
    .line 374
    :cond_e
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_d
    new-instance p2, Landroid/content/Intent;

    .line 384
    .line 385
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 386
    .line 387
    const-class v1, Lcom/mycompany/app/setting/SettingGesture;

    .line 388
    .line 389
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .line 391
    .line 392
    if-eqz p3, :cond_f

    .line 393
    .line 394
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    :cond_f
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :pswitch_e
    new-instance p2, Landroid/content/Intent;

    .line 405
    .line 406
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 407
    .line 408
    const-class v1, Lcom/mycompany/app/setting/SettingWeb;

    .line 409
    .line 410
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .line 412
    .line 413
    if-eqz p3, :cond_10

    .line 414
    .line 415
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    .line 420
    .line 421
    :cond_10
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :pswitch_f
    new-instance p2, Landroid/content/Intent;

    .line 431
    .line 432
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 433
    .line 434
    const-class v1, Lcom/mycompany/app/setting/SettingCustom;

    .line 435
    .line 436
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .line 438
    .line 439
    if-eqz p3, :cond_11

    .line 440
    .line 441
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    .line 443
    .line 444
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    .line 446
    .line 447
    :cond_11
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :pswitch_10
    new-instance p2, Landroid/content/Intent;

    .line 457
    .line 458
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 459
    .line 460
    const-class v1, Lcom/mycompany/app/setting/SettingTab;

    .line 461
    .line 462
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .line 464
    .line 465
    if-eqz p3, :cond_12

    .line 466
    .line 467
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    .line 472
    .line 473
    :cond_12
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :pswitch_11
    new-instance p2, Landroid/content/Intent;

    .line 478
    .line 479
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 480
    .line 481
    const-class p4, Lcom/mycompany/app/setting/SettingMenu;

    .line 482
    .line 483
    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    .line 488
    .line 489
    return-void

    .line 490
    :pswitch_12
    new-instance p2, Landroid/content/Intent;

    .line 491
    .line 492
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 493
    .line 494
    const-class p4, Lcom/mycompany/app/setting/SettingLayout;

    .line 495
    .line 496
    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_13
    new-instance p2, Landroid/content/Intent;

    .line 504
    .line 505
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 506
    .line 507
    const-class v1, Lcom/mycompany/app/setting/SettingDisplay;

    .line 508
    .line 509
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .line 511
    .line 512
    if-eqz p3, :cond_13

    .line 513
    .line 514
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    .line 516
    .line 517
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    .line 519
    .line 520
    :cond_13
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_14
    new-instance p2, Landroid/content/Intent;

    .line 530
    .line 531
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 532
    .line 533
    const-class v1, Lcom/mycompany/app/setting/SettingMemory;

    .line 534
    .line 535
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .line 537
    .line 538
    if-eqz p3, :cond_14

    .line 539
    .line 540
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    .line 542
    .line 543
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    .line 545
    .line 546
    :cond_14
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 552
    .line 553
    .line 554
    return-void

    .line 555
    :pswitch_15
    new-instance p2, Landroid/content/Intent;

    .line 556
    .line 557
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 558
    .line 559
    const-class v1, Lcom/mycompany/app/setting/SettingMedia;

    .line 560
    .line 561
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    .line 563
    .line 564
    if-eqz p3, :cond_15

    .line 565
    .line 566
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    .line 568
    .line 569
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    .line 571
    .line 572
    :cond_15
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    .line 576
    .line 577
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_16
    new-instance p2, Landroid/content/Intent;

    .line 582
    .line 583
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 584
    .line 585
    const-class v1, Lcom/mycompany/app/setting/SettingDown;

    .line 586
    .line 587
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .line 589
    .line 590
    if-eqz p3, :cond_16

    .line 591
    .line 592
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    .line 594
    .line 595
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    .line 597
    .line 598
    :cond_16
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 599
    .line 600
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 604
    .line 605
    .line 606
    return-void

    .line 607
    :pswitch_17
    new-instance p2, Landroid/content/Intent;

    .line 608
    .line 609
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 610
    .line 611
    const-class v2, Lcom/mycompany/app/setting/SettingClean;

    .line 612
    .line 613
    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .line 615
    .line 616
    if-eqz p3, :cond_17

    .line 617
    .line 618
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    .line 620
    .line 621
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    .line 623
    .line 624
    :cond_17
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 630
    .line 631
    .line 632
    return-void

    .line 633
    :pswitch_18
    new-instance p2, Landroid/content/Intent;

    .line 634
    .line 635
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 636
    .line 637
    const-class v2, Lcom/mycompany/app/setting/SettingPay;

    .line 638
    .line 639
    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    .line 641
    .line 642
    if-eqz p3, :cond_18

    .line 643
    .line 644
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    .line 646
    .line 647
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    .line 649
    .line 650
    :cond_18
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 651
    .line 652
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    .line 654
    .line 655
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :pswitch_19
    new-instance p2, Landroid/content/Intent;

    .line 660
    .line 661
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 662
    .line 663
    const-class v1, Lcom/mycompany/app/setting/SettingBackup;

    .line 664
    .line 665
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .line 667
    .line 668
    if-eqz p3, :cond_19

    .line 669
    .line 670
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    .line 672
    .line 673
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    .line 675
    .line 676
    :cond_19
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_1a
    new-instance p2, Landroid/content/Intent;

    .line 681
    .line 682
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 683
    .line 684
    const-class v1, Lcom/mycompany/app/setting/SettingSite;

    .line 685
    .line 686
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    .line 688
    .line 689
    if-eqz p3, :cond_1a

    .line 690
    .line 691
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 692
    .line 693
    .line 694
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    .line 696
    .line 697
    :cond_1a
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    .line 701
    .line 702
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :pswitch_1b
    new-instance p2, Landroid/content/Intent;

    .line 707
    .line 708
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 709
    .line 710
    const-class v1, Lcom/mycompany/app/setting/SettingAdvanced;

    .line 711
    .line 712
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .line 714
    .line 715
    if-eqz p3, :cond_1b

    .line 716
    .line 717
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 718
    .line 719
    .line 720
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    .line 722
    .line 723
    :cond_1b
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    .line 727
    .line 728
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 729
    .line 730
    .line 731
    return-void

    .line 732
    :pswitch_1c
    new-instance p2, Landroid/content/Intent;

    .line 733
    .line 734
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 735
    .line 736
    const-class v1, Lcom/mycompany/app/setting/SettingGeneral;

    .line 737
    .line 738
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    .line 740
    .line 741
    if-eqz p3, :cond_1c

    .line 742
    .line 743
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    .line 745
    .line 746
    invoke-virtual {p2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    .line 748
    .line 749
    :cond_1c
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 750
    .line 751
    .line 752
    return-void

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_warp
    .end packed-switch
.end method
