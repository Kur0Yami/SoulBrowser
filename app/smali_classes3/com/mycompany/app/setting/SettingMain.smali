.class public Lcom/mycompany/app/setting/SettingMain;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingMain$SearchTask;
    }
.end annotation


# static fields
.field public static final synthetic C2:I


# instance fields
.field public A2:Z

.field public B2:Z

.field public X1:Ljava/lang/String;

.field public Y1:Z

.field public Z1:Z

.field public a2:Z

.field public b2:I

.field public c2:Z

.field public d2:Lcom/mycompany/app/view/MyButtonImage;

.field public e2:Z

.field public f2:Z

.field public g2:Landroid/widget/FrameLayout;

.field public h2:Lcom/mycompany/app/view/MyEditPure;

.field public i2:Lcom/mycompany/app/view/MyButtonImage;

.field public j2:Lcom/mycompany/app/view/MyButtonImage;

.field public k2:Lcom/mycompany/app/view/MyRoundView;

.field public l2:Z

.field public m2:Z

.field public n2:Lcom/mycompany/app/setting/SettingMain$SearchTask;

.field public o2:Ljava/util/ArrayList;

.field public p2:Ljava/util/ArrayList;

.field public q2:Z

.field public r2:Z

.field public s2:I

.field public t2:Z

.field public u2:I

.field public v2:I

.field public w2:Z

.field public x2:Z

.field public y2:Z

.field public z2:Z


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

.method public static O0(Lcom/mycompany/app/setting/SettingMain;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget v2, Lnet/kaki87/soul2/testing/R$string;->lang_res:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " (GitHub)"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v0, 0x18

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-lt v10, v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 48
    .line 49
    sget v4, Lnet/kaki87/soul2/testing/R$string;->default_browser:I

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    const/16 v0, 0x1a

    .line 61
    .line 62
    if-lt v10, v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 65
    .line 66
    sget v4, Lnet/kaki87/soul2/testing/R$string;->notification:I

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v3, 0x2

    .line 71
    move-object/from16 v1, p1

    .line 72
    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 80
    .line 81
    sget v4, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v3, 0x4

    .line 86
    move-object/from16 v1, p1

    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 95
    .line 96
    const/4 v3, 0x5

    .line 97
    move-object v4, v8

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 105
    .line 106
    sget v4, Lnet/kaki87/soul2/testing/R$string;->app_keyboard:I

    .line 107
    .line 108
    const/4 v3, 0x7

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 116
    .line 117
    sget v4, Lnet/kaki87/soul2/testing/R$string;->double_back:I

    .line 118
    .line 119
    const/16 v3, 0x8

    .line 120
    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 128
    .line 129
    sget v4, Lnet/kaki87/soul2/testing/R$string;->album_shortcut:I

    .line 130
    .line 131
    sget v5, Lnet/kaki87/soul2/testing/R$string;->album_short_info:I

    .line 132
    .line 133
    const/16 v3, 0xa

    .line 134
    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 142
    .line 143
    sget v4, Lnet/kaki87/soul2/testing/R$string;->cast_shortcut:I

    .line 144
    .line 145
    sget v5, Lnet/kaki87/soul2/testing/R$string;->cast_short_info:I

    .line 146
    .line 147
    const/16 v3, 0xb

    .line 148
    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    sget v2, Lnet/kaki87/soul2/testing/R$string;->accept_cookie_info_1:I

    .line 164
    .line 165
    const-string v8, "\n"

    .line 166
    .line 167
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget v2, Lnet/kaki87/soul2/testing/R$string;->accept_cookie_info_2:I

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    sget v3, Lnet/kaki87/soul2/testing/R$string;->java_script_info:I

    .line 185
    .line 186
    invoke-static {v1, v3, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sget v3, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    new-instance v11, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 212
    .line 213
    sget v4, Lnet/kaki87/soul2/testing/R$string;->save_data:I

    .line 214
    .line 215
    sget v5, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 216
    .line 217
    const/4 v2, 0x2

    .line 218
    const/4 v3, 0x1

    .line 219
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 226
    .line 227
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pre_raster:I

    .line 228
    .line 229
    sget v5, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 230
    .line 231
    const/4 v3, 0x2

    .line 232
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 239
    .line 240
    sget v4, Lnet/kaki87/soul2/testing/R$string;->block_amp:I

    .line 241
    .line 242
    sget v5, Lnet/kaki87/soul2/testing/R$string;->block_amp_info:I

    .line 243
    .line 244
    const/4 v3, 0x3

    .line 245
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 252
    .line 253
    sget v4, Lnet/kaki87/soul2/testing/R$string;->accept_cookie:I

    .line 254
    .line 255
    const/4 v5, 0x0

    .line 256
    const/4 v3, 0x5

    .line 257
    move-object v6, v9

    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 265
    .line 266
    sget v4, Lnet/kaki87/soul2/testing/R$string;->third_cookie:I

    .line 267
    .line 268
    const/4 v6, 0x0

    .line 269
    const/4 v3, 0x6

    .line 270
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 277
    .line 278
    sget v4, Lnet/kaki87/soul2/testing/R$string;->java_script:I

    .line 279
    .line 280
    const/16 v3, 0x8

    .line 281
    .line 282
    move-object v6, v10

    .line 283
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 290
    .line 291
    sget v4, Lnet/kaki87/soul2/testing/R$string;->js_black:I

    .line 292
    .line 293
    sget v5, Lnet/kaki87/soul2/testing/R$string;->js_black_info:I

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    const/16 v3, 0x9

    .line 297
    .line 298
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 305
    .line 306
    sget v4, Lnet/kaki87/soul2/testing/R$string;->only_https:I

    .line 307
    .line 308
    sget v5, Lnet/kaki87/soul2/testing/R$string;->only_https_info:I

    .line 309
    .line 310
    const/16 v3, 0xb

    .line 311
    .line 312
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 319
    .line 320
    sget v4, Lnet/kaki87/soul2/testing/R$string;->block_ssl:I

    .line 321
    .line 322
    sget v5, Lnet/kaki87/soul2/testing/R$string;->block_ssl_info:I

    .line 323
    .line 324
    const/16 v3, 0xc

    .line 325
    .line 326
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 333
    .line 334
    sget v4, Lnet/kaki87/soul2/testing/R$string;->debug_mode:I

    .line 335
    .line 336
    sget v5, Lnet/kaki87/soul2/testing/R$string;->debug_mode_info:I

    .line 337
    .line 338
    const/16 v3, 0xe

    .line 339
    .line 340
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v2, " ("

    .line 352
    .line 353
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sget v2, Lnet/kaki87/soul2/testing/R$string;->long_press:I

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v2, ")"

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    sget v3, Lnet/kaki87/soul2/testing/R$string;->link:I

    .line 380
    .line 381
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 401
    .line 402
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    new-instance v11, Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .line 420
    .line 421
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 422
    .line 423
    sget v4, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 424
    .line 425
    sget v5, Lnet/kaki87/soul2/testing/R$string;->page_home_info:I

    .line 426
    .line 427
    const/4 v2, 0x3

    .line 428
    const/4 v3, 0x1

    .line 429
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 436
    .line 437
    sget v4, Lnet/kaki87/soul2/testing/R$string;->start_page:I

    .line 438
    .line 439
    sget v5, Lnet/kaki87/soul2/testing/R$string;->page_start_info:I

    .line 440
    .line 441
    const/4 v3, 0x2

    .line 442
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 449
    .line 450
    sget v4, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 451
    .line 452
    sget v5, Lnet/kaki87/soul2/testing/R$string;->page_tab_info:I

    .line 453
    .line 454
    const/4 v3, 0x3

    .line 455
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 462
    .line 463
    sget v4, Lnet/kaki87/soul2/testing/R$string;->permission:I

    .line 464
    .line 465
    const/4 v5, 0x0

    .line 466
    const/4 v3, 0x5

    .line 467
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 474
    .line 475
    sget v4, Lnet/kaki87/soul2/testing/R$string;->search_engine:I

    .line 476
    .line 477
    const/4 v3, 0x7

    .line 478
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 485
    .line 486
    sget v4, Lnet/kaki87/soul2/testing/R$string;->user_agent:I

    .line 487
    .line 488
    const/16 v3, 0x8

    .line 489
    .line 490
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 497
    .line 498
    sget v4, Lnet/kaki87/soul2/testing/R$string;->link_app:I

    .line 499
    .line 500
    const/16 v3, 0xa

    .line 501
    .line 502
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 509
    .line 510
    const/16 v3, 0xb

    .line 511
    .line 512
    move-object v4, v9

    .line 513
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 520
    .line 521
    const/16 v3, 0xc

    .line 522
    .line 523
    move-object v4, v10

    .line 524
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 531
    .line 532
    .line 533
    new-instance v9, Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .line 537
    .line 538
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 539
    .line 540
    sget v4, Lnet/kaki87/soul2/testing/R$string;->backup_import:I

    .line 541
    .line 542
    const/4 v2, 0x4

    .line 543
    const/4 v3, 0x2

    .line 544
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 551
    .line 552
    sget v4, Lnet/kaki87/soul2/testing/R$string;->backup_export:I

    .line 553
    .line 554
    const/4 v3, 0x3

    .line 555
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    .line 563
    .line 564
    new-instance v9, Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 604
    .line 605
    .line 606
    sget-object v0, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 607
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    sget v2, Lnet/kaki87/soul2/testing/R$string;->check_element:I

    .line 614
    .line 615
    const-string v9, " "

    .line 616
    .line 617
    invoke-static {v1, v2, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    sget v2, Lnet/kaki87/soul2/testing/R$string;->check_ele_info_0:I

    .line 621
    .line 622
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v10

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 632
    .line 633
    if-eqz v2, :cond_3

    .line 634
    .line 635
    sget v2, Lnet/kaki87/soul2/testing/R$string;->app_block_info1:I

    .line 636
    .line 637
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 645
    .line 646
    const/4 v3, 0x2

    .line 647
    if-eq v2, v3, :cond_3

    .line 648
    .line 649
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    sget v2, Lnet/kaki87/soul2/testing/R$string;->app_block_info2:I

    .line 653
    .line 654
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v11

    .line 665
    new-instance v12, Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .line 669
    .line 670
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 671
    .line 672
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_block:I

    .line 673
    .line 674
    sget v5, Lnet/kaki87/soul2/testing/R$string;->ads_block_info:I

    .line 675
    .line 676
    const/4 v6, 0x0

    .line 677
    const/4 v2, 0x7

    .line 678
    const/4 v3, 0x1

    .line 679
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 686
    .line 687
    const/4 v3, 0x2

    .line 688
    sget v5, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 689
    .line 690
    move-object/from16 v1, p1

    .line 691
    .line 692
    move-object v4, v10

    .line 693
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 700
    .line 701
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_filter:I

    .line 702
    .line 703
    const/4 v5, 0x0

    .line 704
    const/4 v3, 0x3

    .line 705
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 712
    .line 713
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_white:I

    .line 714
    .line 715
    sget v5, Lnet/kaki87/soul2/testing/R$string;->guide_ads_allow:I

    .line 716
    .line 717
    const/4 v3, 0x4

    .line 718
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 725
    .line 726
    sget v4, Lnet/kaki87/soul2/testing/R$string;->block_area:I

    .line 727
    .line 728
    sget v5, Lnet/kaki87/soul2/testing/R$string;->area_info_13:I

    .line 729
    .line 730
    const/4 v3, 0x6

    .line 731
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 738
    .line 739
    sget v4, Lnet/kaki87/soul2/testing/R$string;->over_block:I

    .line 740
    .line 741
    sget-object v1, Lcom/mycompany/app/setting/SettingClean;->w2:[I

    .line 742
    .line 743
    sget v2, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 744
    .line 745
    aget v5, v1, v2

    .line 746
    .line 747
    const/4 v2, 0x7

    .line 748
    const/16 v3, 0x8

    .line 749
    .line 750
    move-object/from16 v1, p1

    .line 751
    .line 752
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 759
    .line 760
    sget v4, Lnet/kaki87/soul2/testing/R$string;->over_white:I

    .line 761
    .line 762
    sget v5, Lnet/kaki87/soul2/testing/R$string;->guide_over_allow:I

    .line 763
    .line 764
    const/16 v3, 0x9

    .line 765
    .line 766
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 773
    .line 774
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pop_block:I

    .line 775
    .line 776
    sget-object v1, Lcom/mycompany/app/setting/SettingClean;->z2:[I

    .line 777
    .line 778
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 779
    .line 780
    aget v5, v1, v2

    .line 781
    .line 782
    const/4 v2, 0x7

    .line 783
    const/16 v3, 0xb

    .line 784
    .line 785
    move-object/from16 v1, p1

    .line 786
    .line 787
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 794
    .line 795
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pop_white:I

    .line 796
    .line 797
    sget v5, Lnet/kaki87/soul2/testing/R$string;->guide_pop_allow:I

    .line 798
    .line 799
    const/16 v3, 0xc

    .line 800
    .line 801
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 808
    .line 809
    sget v4, Lnet/kaki87/soul2/testing/R$string;->app_block:I

    .line 810
    .line 811
    const/4 v5, 0x0

    .line 812
    const/16 v3, 0xe

    .line 813
    .line 814
    move-object v6, v11

    .line 815
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 822
    .line 823
    sget v4, Lnet/kaki87/soul2/testing/R$string;->blocked_link:I

    .line 824
    .line 825
    const/4 v6, 0x0

    .line 826
    const/16 v3, 0x10

    .line 827
    .line 828
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 835
    .line 836
    sget v4, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 837
    .line 838
    const/16 v3, 0x11

    .line 839
    .line 840
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 847
    .line 848
    sget v4, Lnet/kaki87/soul2/testing/R$string;->blocked_image:I

    .line 849
    .line 850
    const/16 v3, 0x13

    .line 851
    .line 852
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 859
    .line 860
    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .line 865
    .line 866
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_expire_1:I

    .line 867
    .line 868
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_limit_info:I

    .line 872
    .line 873
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v10

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_back_info_1:I

    .line 883
    .line 884
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_back_info_2:I

    .line 888
    .line 889
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v11

    .line 893
    new-instance v12, Ljava/util/ArrayList;

    .line 894
    .line 895
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .line 897
    .line 898
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 899
    .line 900
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_manager:I

    .line 901
    .line 902
    const/16 v2, 0x8

    .line 903
    .line 904
    const/4 v3, 0x1

    .line 905
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 912
    .line 913
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 914
    .line 915
    const/4 v3, 0x2

    .line 916
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 923
    .line 924
    sget v4, Lnet/kaki87/soul2/testing/R$string;->fast_down:I

    .line 925
    .line 926
    sget v5, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 927
    .line 928
    const/4 v3, 0x4

    .line 929
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 936
    .line 937
    sget v4, Lnet/kaki87/soul2/testing/R$string;->retry_count:I

    .line 938
    .line 939
    sget v5, Lnet/kaki87/soul2/testing/R$string;->retry_count_info:I

    .line 940
    .line 941
    const/4 v3, 0x5

    .line 942
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 949
    .line 950
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_limit:I

    .line 951
    .line 952
    const/4 v5, 0x0

    .line 953
    const/4 v3, 0x6

    .line 954
    move-object v6, v10

    .line 955
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 962
    .line 963
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_back_time:I

    .line 964
    .line 965
    const/4 v3, 0x7

    .line 966
    move-object v6, v11

    .line 967
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 974
    .line 975
    sget v4, Lnet/kaki87/soul2/testing/R$string;->down_noti:I

    .line 976
    .line 977
    const/4 v6, 0x0

    .line 978
    const/16 v3, 0x8

    .line 979
    .line 980
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 987
    .line 988
    sget v4, Lnet/kaki87/soul2/testing/R$string;->report_site:I

    .line 989
    .line 990
    sget v5, Lnet/kaki87/soul2/testing/R$string;->report_down:I

    .line 991
    .line 992
    const/16 v3, 0xa

    .line 993
    .line 994
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1001
    .line 1002
    .line 1003
    sget-object v0, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 1004
    .line 1005
    new-instance v10, Ljava/util/ArrayList;

    .line 1006
    .line 1007
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1011
    .line 1012
    sget v4, Lnet/kaki87/soul2/testing/R$string;->video_manager:I

    .line 1013
    .line 1014
    const/4 v5, 0x0

    .line 1015
    const/16 v2, 0x9

    .line 1016
    .line 1017
    const/4 v3, 0x1

    .line 1018
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1025
    .line 1026
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 1027
    .line 1028
    const/4 v3, 0x2

    .line 1029
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    .line 1034
    .line 1035
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1036
    .line 1037
    sget v4, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 1038
    .line 1039
    const/4 v3, 0x3

    .line 1040
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1047
    .line 1048
    sget v4, Lnet/kaki87/soul2/testing/R$string;->back_play:I

    .line 1049
    .line 1050
    sget v5, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 1051
    .line 1052
    const/4 v3, 0x6

    .line 1053
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1060
    .line 1061
    sget v4, Lnet/kaki87/soul2/testing/R$string;->youtube_manager:I

    .line 1062
    .line 1063
    const/4 v5, 0x0

    .line 1064
    const/16 v3, 0xa

    .line 1065
    .line 1066
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    .line 1071
    .line 1072
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1073
    .line 1074
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 1075
    .line 1076
    const/16 v3, 0xb

    .line 1077
    .line 1078
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1085
    .line 1086
    sget v4, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 1087
    .line 1088
    const/16 v3, 0xc

    .line 1089
    .line 1090
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1097
    .line 1098
    sget v4, Lnet/kaki87/soul2/testing/R$string;->youtube_auto:I

    .line 1099
    .line 1100
    const/16 v3, 0xe

    .line 1101
    .line 1102
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    .line 1107
    .line 1108
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1109
    .line 1110
    sget v4, Lnet/kaki87/soul2/testing/R$string;->youtube_unmute:I

    .line 1111
    .line 1112
    const/16 v3, 0xf

    .line 1113
    .line 1114
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1121
    .line 1122
    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 1129
    .line 1130
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    sget v2, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 1134
    .line 1135
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v6

    .line 1139
    new-instance v10, Ljava/util/ArrayList;

    .line 1140
    .line 1141
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .line 1143
    .line 1144
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1145
    .line 1146
    sget v4, Lnet/kaki87/soul2/testing/R$string;->without_load:I

    .line 1147
    .line 1148
    const/16 v2, 0xa

    .line 1149
    .line 1150
    const/4 v3, 0x2

    .line 1151
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1158
    .line 1159
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 1160
    .line 1161
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/setting/SettingMemory;->S0(Landroid/content/Context;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v6

    .line 1165
    const/4 v3, 0x3

    .line 1166
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1173
    .line 1174
    sget v4, Lnet/kaki87/soul2/testing/R$string;->open_limit:I

    .line 1175
    .line 1176
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/setting/SettingMemory;->U0(Landroid/content/Context;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v6

    .line 1180
    const/4 v3, 0x6

    .line 1181
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .line 1186
    .line 1187
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1188
    .line 1189
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 1190
    .line 1191
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/setting/SettingMemory;->T0(Landroid/content/Context;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v6

    .line 1195
    const/4 v3, 0x7

    .line 1196
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    .line 1201
    .line 1202
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1203
    .line 1204
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_block_list:I

    .line 1205
    .line 1206
    const/4 v6, 0x0

    .line 1207
    const/16 v3, 0x8

    .line 1208
    .line 1209
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    .line 1214
    .line 1215
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1216
    .line 1217
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_keep:I

    .line 1218
    .line 1219
    sget v5, Lnet/kaki87/soul2/testing/R$string;->mem_keep_info:I

    .line 1220
    .line 1221
    const/16 v3, 0xa

    .line 1222
    .line 1223
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1230
    .line 1231
    .line 1232
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 1233
    .line 1234
    new-instance v10, Ljava/util/ArrayList;

    .line 1235
    .line 1236
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .line 1238
    .line 1239
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1240
    .line 1241
    const-string v4, "UI"

    .line 1242
    .line 1243
    const/4 v5, 0x0

    .line 1244
    const/16 v2, 0xc

    .line 1245
    .line 1246
    const/4 v3, 0x1

    .line 1247
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1254
    .line 1255
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 1256
    .line 1257
    const/4 v3, 0x2

    .line 1258
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    .line 1263
    .line 1264
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1265
    .line 1266
    sget v4, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 1267
    .line 1268
    const/4 v3, 0x3

    .line 1269
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1276
    .line 1277
    sget v4, Lnet/kaki87/soul2/testing/R$string;->dark_image:I

    .line 1278
    .line 1279
    sget v5, Lnet/kaki87/soul2/testing/R$string;->img_brt_info:I

    .line 1280
    .line 1281
    const/4 v3, 0x5

    .line 1282
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    .line 1287
    .line 1288
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1289
    .line 1290
    sget v4, Lnet/kaki87/soul2/testing/R$string;->img_bright:I

    .line 1291
    .line 1292
    const/4 v5, 0x0

    .line 1293
    const/4 v3, 0x6

    .line 1294
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1301
    .line 1302
    sget v4, Lnet/kaki87/soul2/testing/R$string;->header_title:I

    .line 1303
    .line 1304
    const/16 v3, 0x8

    .line 1305
    .line 1306
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1313
    .line 1314
    sget v4, Lnet/kaki87/soul2/testing/R$string;->header_color:I

    .line 1315
    .line 1316
    const/16 v3, 0x9

    .line 1317
    .line 1318
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    .line 1323
    .line 1324
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1325
    .line 1326
    sget v4, Lnet/kaki87/soul2/testing/R$string;->dark_home:I

    .line 1327
    .line 1328
    sget v5, Lnet/kaki87/soul2/testing/R$string;->dark_home_info:I

    .line 1329
    .line 1330
    const/16 v3, 0xa

    .line 1331
    .line 1332
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    .line 1337
    .line 1338
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->folder_color:I

    const/4 v5, 0x0

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->link_image_tab:I

    const/4 v5, 0x0

    const/16 v3, 0x14

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->preview_url_bar:I

    const/4 v5, 0x0

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1339
    .line 1340
    sget v4, Lnet/kaki87/soul2/testing/R$string;->screen_filter:I

    .line 1341
    .line 1342
    const/4 v5, 0x0

    .line 1343
    const/16 v3, 0xc

    .line 1344
    .line 1345
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    .line 1350
    .line 1351
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1352
    .line 1353
    sget v4, Lnet/kaki87/soul2/testing/R$string;->filter_color:I

    .line 1354
    .line 1355
    const/16 v3, 0xd

    .line 1356
    .line 1357
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1364
    .line 1365
    sget v4, Lnet/kaki87/soul2/testing/R$string;->brightness:I

    .line 1366
    .line 1367
    const/16 v3, 0xf

    .line 1368
    .line 1369
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1376
    .line 1377
    sget v4, Lnet/kaki87/soul2/testing/R$string;->screen_off:I

    .line 1378
    .line 1379
    const/16 v3, 0x10

    .line 1380
    .line 1381
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    .line 1386
    .line 1387
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1388
    .line 1389
    sget v4, Lnet/kaki87/soul2/testing/R$string;->screen_rotate:I

    .line 1390
    .line 1391
    const/16 v3, 0x11

    .line 1392
    .line 1393
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1400
    .line 1401
    .line 1402
    new-instance v10, Ljava/util/ArrayList;

    .line 1403
    .line 1404
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .line 1406
    .line 1407
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1408
    .line 1409
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_add_pos:I

    .line 1410
    .line 1411
    const/16 v2, 0xf

    .line 1412
    .line 1413
    const/4 v3, 0x1

    .line 1414
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    .line 1419
    .line 1420
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1421
    .line 1422
    sget v4, Lnet/kaki87/soul2/testing/R$string;->auto_group:I

    .line 1423
    .line 1424
    sget v5, Lnet/kaki87/soul2/testing/R$string;->auto_group_info:I

    .line 1425
    .line 1426
    const/4 v3, 0x2

    .line 1427
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1434
    .line 1435
    sget v4, Lnet/kaki87/soul2/testing/R$string;->show_tab_bar:I

    .line 1436
    .line 1437
    const/4 v5, 0x0

    .line 1438
    const/4 v3, 0x4

    .line 1439
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1446
    .line 1447
    sget v4, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 1448
    .line 1449
    const/4 v3, 0x5

    .line 1450
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1457
    .line 1458
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_swipe_up:I

    .line 1459
    .line 1460
    const/4 v3, 0x6

    .line 1461
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    .line 1466
    .line 1467
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1468
    .line 1469
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_swipe_dn:I

    .line 1470
    .line 1471
    const/4 v3, 0x7

    .line 1472
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    .line 1477
    .line 1478
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1479
    .line 1480
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_indicator:I

    .line 1481
    .line 1482
    sget v5, Lnet/kaki87/soul2/testing/R$string;->tab_indi_info:I

    .line 1483
    .line 1484
    const/16 v3, 0x9

    .line 1485
    .line 1486
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1493
    .line 1494
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_loop:I

    .line 1495
    .line 1496
    sget v5, Lnet/kaki87/soul2/testing/R$string;->tab_loop_info:I

    .line 1497
    .line 1498
    const/16 v3, 0xa

    .line 1499
    .line 1500
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    .line 1505
    .line 1506
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1507
    .line 1508
    sget v4, Lnet/kaki87/soul2/testing/R$string;->use_tab_anim:I

    .line 1509
    .line 1510
    const/4 v5, 0x0

    .line 1511
    const/16 v3, 0xb

    .line 1512
    .line 1513
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    .line 1518
    .line 1519
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1520
    .line 1521
    sget v4, Lnet/kaki87/soul2/testing/R$string;->undelete:I

    .line 1522
    .line 1523
    const/16 v3, 0xd

    .line 1524
    .line 1525
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    .line 1530
    .line 1531
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1532
    .line 1533
    sget v4, Lnet/kaki87/soul2/testing/R$string;->open_new_tab:I

    .line 1534
    .line 1535
    const/16 v3, 0xe

    .line 1536
    .line 1537
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    .line 1542
    .line 1543
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1544
    .line 1545
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_keyboard:I

    .line 1546
    .line 1547
    const/16 v3, 0xf

    .line 1548
    .line 1549
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    .line 1554
    .line 1555
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1556
    .line 1557
    sget v4, Lnet/kaki87/soul2/testing/R$string;->home_close:I

    .line 1558
    .line 1559
    const/16 v3, 0x10

    .line 1560
    .line 1561
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    .line 1566
    .line 1567
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1568
    .line 1569
    sget v4, Lnet/kaki87/soul2/testing/R$string;->last_noti:I

    .line 1570
    .line 1571
    sget v5, Lnet/kaki87/soul2/testing/R$string;->last_noti_info:I

    .line 1572
    .line 1573
    const/16 v3, 0x12

    .line 1574
    .line 1575
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    .line 1580
    .line 1581
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1582
    .line 1583
    sget v4, Lnet/kaki87/soul2/testing/R$string;->last_swipe:I

    .line 1584
    .line 1585
    const/4 v5, 0x0

    .line 1586
    const/16 v3, 0x13

    .line 1587
    .line 1588
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    .line 1593
    .line 1594
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1595
    .line 1596
    sget v4, Lnet/kaki87/soul2/testing/R$string;->last_exit:I

    .line 1597
    .line 1598
    const/16 v3, 0x14

    .line 1599
    .line 1600
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1607
    .line 1608
    .line 1609
    sget-object v0, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 1610
    .line 1611
    new-instance v10, Ljava/util/ArrayList;

    .line 1612
    .line 1613
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1614
    .line 1615
    .line 1616
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1617
    .line 1618
    sget v4, Lnet/kaki87/soul2/testing/R$string;->full_tool:I

    .line 1619
    .line 1620
    const/16 v2, 0x10

    .line 1621
    .line 1622
    const/4 v3, 0x1

    .line 1623
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    .line 1628
    .line 1629
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1630
    .line 1631
    sget v4, Lnet/kaki87/soul2/testing/R$string;->land_mode:I

    .line 1632
    .line 1633
    const/4 v3, 0x2

    .line 1634
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    .line 1639
    .line 1640
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1641
    .line 1642
    sget v4, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 1643
    .line 1644
    const/4 v3, 0x3

    .line 1645
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1646
    .line 1647
    .line 1648
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    .line 1650
    .line 1651
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1652
    .line 1653
    sget v4, Lnet/kaki87/soul2/testing/R$string;->address_label:I

    .line 1654
    .line 1655
    const/4 v3, 0x5

    .line 1656
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1657
    .line 1658
    .line 1659
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    .line 1661
    .line 1662
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1663
    .line 1664
    sget v4, Lnet/kaki87/soul2/testing/R$string;->address_icon:I

    .line 1665
    .line 1666
    const/4 v3, 0x6

    .line 1667
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    .line 1672
    .line 1673
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1674
    .line 1675
    sget v4, Lnet/kaki87/soul2/testing/R$string;->search_suggest:I

    .line 1676
    .line 1677
    const/4 v3, 0x7

    .line 1678
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    .line 1683
    .line 1684
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1685
    .line 1686
    sget v4, Lnet/kaki87/soul2/testing/R$string;->auto_comp:I

    .line 1687
    .line 1688
    const/16 v3, 0x8

    .line 1689
    .line 1690
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1697
    .line 1698
    sget v4, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 1699
    .line 1700
    const/16 v3, 0xa

    .line 1701
    .line 1702
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    .line 1707
    .line 1708
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1709
    .line 1710
    sget v4, Lnet/kaki87/soul2/testing/R$string;->recent_secret:I

    .line 1711
    .line 1712
    const/16 v3, 0xb

    .line 1713
    .line 1714
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    .line 1719
    .line 1720
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1721
    .line 1722
    sget v4, Lnet/kaki87/soul2/testing/R$string;->onehand_icon:I

    .line 1723
    .line 1724
    sget v5, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 1725
    .line 1726
    const/16 v3, 0xd

    .line 1727
    .line 1728
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    .line 1733
    .line 1734
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1735
    .line 1736
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 1737
    .line 1738
    const/4 v5, 0x0

    .line 1739
    const/16 v3, 0xe

    .line 1740
    .line 1741
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    .line 1746
    .line 1747
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1748
    .line 1749
    sget v4, Lnet/kaki87/soul2/testing/R$string;->onehand_area:I

    .line 1750
    .line 1751
    const/16 v3, 0xf

    .line 1752
    .line 1753
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    .line 1758
    .line 1759
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1760
    .line 1761
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pull_refresh:I

    .line 1762
    .line 1763
    const/16 v3, 0x11

    .line 1764
    .line 1765
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    .line 1770
    .line 1771
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1772
    .line 1773
    sget v4, Lnet/kaki87/soul2/testing/R$string;->show_up:I

    .line 1774
    .line 1775
    const/16 v3, 0x12

    .line 1776
    .line 1777
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1778
    .line 1779
    .line 1780
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    .line 1782
    .line 1783
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1784
    .line 1785
    sget v4, Lnet/kaki87/soul2/testing/R$string;->show_scroll:I

    .line 1786
    .line 1787
    const/16 v3, 0x13

    .line 1788
    .line 1789
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    .line 1794
    .line 1795
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1796
    .line 1797
    sget v4, Lnet/kaki87/soul2/testing/R$string;->vol_scroll:I

    .line 1798
    .line 1799
    const/16 v3, 0x14

    .line 1800
    .line 1801
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1802
    .line 1803
    .line 1804
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    .line 1806
    .line 1807
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1808
    .line 1809
    sget v4, Lnet/kaki87/soul2/testing/R$string;->use_scroll_anim:I

    .line 1810
    .line 1811
    const/16 v3, 0x15

    .line 1812
    .line 1813
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1820
    .line 1821
    .line 1822
    sget-object v0, Lcom/mycompany/app/setting/SettingWeb;->h2:[I

    .line 1823
    .line 1824
    new-instance v10, Ljava/util/ArrayList;

    .line 1825
    .line 1826
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    .line 1828
    .line 1829
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1830
    .line 1831
    sget v4, Lnet/kaki87/soul2/testing/R$string;->show_image:I

    .line 1832
    .line 1833
    sget v5, Lnet/kaki87/soul2/testing/R$string;->show_image_info:I

    .line 1834
    .line 1835
    const/16 v2, 0x12

    .line 1836
    .line 1837
    const/4 v3, 0x1

    .line 1838
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    .line 1843
    .line 1844
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1845
    .line 1846
    sget v4, Lnet/kaki87/soul2/testing/R$string;->free_scale:I

    .line 1847
    .line 1848
    const/4 v5, 0x0

    .line 1849
    const/4 v3, 0x2

    .line 1850
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    .line 1855
    .line 1856
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1857
    .line 1858
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reader_mode:I

    .line 1859
    .line 1860
    const/4 v3, 0x3

    .line 1861
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    .line 1866
    .line 1867
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1868
    .line 1869
    sget v4, Lnet/kaki87/soul2/testing/R$string;->text_size:I

    .line 1870
    .line 1871
    const/4 v3, 0x5

    .line 1872
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    .line 1877
    .line 1878
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1879
    .line 1880
    sget v4, Lnet/kaki87/soul2/testing/R$string;->font:I

    .line 1881
    .line 1882
    sget v5, Lnet/kaki87/soul2/testing/R$string;->font_info_1:I

    .line 1883
    .line 1884
    const/4 v3, 0x6

    .line 1885
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    .line 1890
    .line 1891
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1892
    .line 1893
    sget v4, Lnet/kaki87/soul2/testing/R$string;->user_script_on:I

    .line 1894
    .line 1895
    const/4 v5, 0x0

    .line 1896
    const/16 v3, 0x8

    .line 1897
    .line 1898
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1902
    .line 1903
    .line 1904
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1905
    .line 1906
    sget v4, Lnet/kaki87/soul2/testing/R$string;->user_script_list:I

    .line 1907
    .line 1908
    const/16 v3, 0x9

    .line 1909
    .line 1910
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1917
    .line 1918
    .line 1919
    sget v0, Lnet/kaki87/soul2/testing/R$string;->move_up:I

    .line 1920
    .line 1921
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v0

    .line 1925
    sget v2, Lnet/kaki87/soul2/testing/R$string;->move_down:I

    .line 1926
    .line 1927
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v2

    .line 1931
    sget v3, Lnet/kaki87/soul2/testing/R$string;->move_left:I

    .line 1932
    .line 1933
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v3

    .line 1937
    sget v4, Lnet/kaki87/soul2/testing/R$string;->move_right:I

    .line 1938
    .line 1939
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v4

    .line 1943
    const-string v5, " + "

    .line 1944
    .line 1945
    invoke-static {v0, v5, v3}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v10

    .line 1949
    invoke-static {v0, v5, v4}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v11

    .line 1953
    invoke-static {v2, v5, v3}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v12

    .line 1957
    invoke-static {v2, v5, v4}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v13

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1962
    .line 1963
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1964
    .line 1965
    .line 1966
    sget v2, Lnet/kaki87/soul2/testing/R$string;->tab_gesture:I

    .line 1967
    .line 1968
    invoke-static {v1, v2, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1969
    .line 1970
    .line 1971
    sget v2, Lnet/kaki87/soul2/testing/R$string;->two_finger:I

    .line 1972
    .line 1973
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v14

    .line 1977
    new-instance v15, Ljava/util/ArrayList;

    .line 1978
    .line 1979
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    .line 1981
    .line 1982
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1983
    .line 1984
    sget v4, Lnet/kaki87/soul2/testing/R$string;->swipe:I

    .line 1985
    .line 1986
    const/4 v5, 0x0

    .line 1987
    const/16 v2, 0x13

    .line 1988
    .line 1989
    const/4 v3, 0x1

    .line 1990
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    .line 1995
    .line 1996
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 1997
    .line 1998
    sget v4, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 1999
    .line 2000
    const/4 v3, 0x2

    .line 2001
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    .line 2006
    .line 2007
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2008
    .line 2009
    const/4 v3, 0x4

    .line 2010
    move-object v4, v10

    .line 2011
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2012
    .line 2013
    .line 2014
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    .line 2016
    .line 2017
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2018
    .line 2019
    const/4 v3, 0x5

    .line 2020
    move-object v4, v11

    .line 2021
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    .line 2026
    .line 2027
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2028
    .line 2029
    const/4 v3, 0x6

    .line 2030
    move-object v4, v12

    .line 2031
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    .line 2036
    .line 2037
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2038
    .line 2039
    const/4 v3, 0x7

    .line 2040
    move-object v4, v13

    .line 2041
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    .line 2046
    .line 2047
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2048
    .line 2049
    const/16 v3, 0x9

    .line 2050
    .line 2051
    move-object v4, v14

    .line 2052
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2053
    .line 2054
    .line 2055
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2059
    .line 2060
    .line 2061
    sget-object v0, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 2062
    .line 2063
    new-instance v10, Ljava/util/ArrayList;

    .line 2064
    .line 2065
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2066
    .line 2067
    .line 2068
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2069
    .line 2070
    sget v4, Lnet/kaki87/soul2/testing/R$string;->trans_detect:I

    .line 2071
    .line 2072
    const/16 v2, 0x14

    .line 2073
    .line 2074
    const/4 v3, 0x1

    .line 2075
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    .line 2080
    .line 2081
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2082
    .line 2083
    sget v4, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 2084
    .line 2085
    const/4 v3, 0x2

    .line 2086
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2087
    .line 2088
    .line 2089
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2090
    .line 2091
    .line 2092
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2093
    .line 2094
    sget v4, Lnet/kaki87/soul2/testing/R$string;->recent_lang:I

    .line 2095
    .line 2096
    const/4 v3, 0x3

    .line 2097
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    .line 2102
    .line 2103
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2104
    .line 2105
    sget v4, Lnet/kaki87/soul2/testing/R$string;->trans_icon_always:I

    .line 2106
    .line 2107
    const/4 v3, 0x5

    .line 2108
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    .line 2113
    .line 2114
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2115
    .line 2116
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_pos:I

    .line 2117
    .line 2118
    const/4 v3, 0x6

    .line 2119
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    .line 2124
    .line 2125
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2126
    .line 2127
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 2128
    .line 2129
    const/4 v3, 0x7

    .line 2130
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    .line 2135
    .line 2136
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2137
    .line 2138
    sget v4, Lnet/kaki87/soul2/testing/R$string;->trans_except:I

    .line 2139
    .line 2140
    sget v5, Lnet/kaki87/soul2/testing/R$string;->trans_except_info:I

    .line 2141
    .line 2142
    const/16 v3, 0x9

    .line 2143
    .line 2144
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2145
    .line 2146
    .line 2147
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2151
    .line 2152
    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2154
    .line 2155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2156
    .line 2157
    .line 2158
    sget v2, Lnet/kaki87/soul2/testing/R$string;->stop_icon_info:I

    .line 2159
    .line 2160
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2161
    .line 2162
    .line 2163
    sget v2, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 2164
    .line 2165
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v10

    .line 2169
    new-instance v11, Ljava/util/ArrayList;

    .line 2170
    .line 2171
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2172
    .line 2173
    .line 2174
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2175
    .line 2176
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tts_on:I

    .line 2177
    .line 2178
    sget v5, Lnet/kaki87/soul2/testing/R$string;->tts_info_1:I

    .line 2179
    .line 2180
    const/16 v2, 0x15

    .line 2181
    .line 2182
    const/4 v3, 0x1

    .line 2183
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2184
    .line 2185
    .line 2186
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    .line 2188
    .line 2189
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2190
    .line 2191
    sget v4, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 2192
    .line 2193
    const/4 v5, 0x0

    .line 2194
    const/4 v3, 0x2

    .line 2195
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2196
    .line 2197
    .line 2198
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    .line 2200
    .line 2201
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2202
    .line 2203
    sget v4, Lnet/kaki87/soul2/testing/R$string;->stop_icon:I

    .line 2204
    .line 2205
    const/4 v3, 0x4

    .line 2206
    move-object v6, v10

    .line 2207
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    .line 2212
    .line 2213
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2214
    .line 2215
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 2216
    .line 2217
    const/4 v6, 0x0

    .line 2218
    const/4 v3, 0x5

    .line 2219
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2220
    .line 2221
    .line 2222
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    .line 2224
    .line 2225
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2226
    .line 2227
    .line 2228
    sget v0, Lnet/kaki87/soul2/testing/R$string;->web_stream:I

    .line 2229
    .line 2230
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v0

    .line 2234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2237
    .line 2238
    .line 2239
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 2240
    .line 2241
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v3

    .line 2245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    .line 2247
    .line 2248
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v10

    .line 2258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2259
    .line 2260
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2261
    .line 2262
    .line 2263
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 2264
    .line 2265
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v3

    .line 2269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    .line 2271
    .line 2272
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    .line 2274
    .line 2275
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    .line 2277
    .line 2278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v9

    .line 2282
    new-instance v11, Ljava/util/ArrayList;

    .line 2283
    .line 2284
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .line 2286
    .line 2287
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2288
    .line 2289
    sget v4, Lnet/kaki87/soul2/testing/R$string;->cast_on:I

    .line 2290
    .line 2291
    const/16 v2, 0x16

    .line 2292
    .line 2293
    const/4 v3, 0x1

    .line 2294
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2295
    .line 2296
    .line 2297
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    .line 2299
    .line 2300
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2301
    .line 2302
    sget v4, Lnet/kaki87/soul2/testing/R$string;->repeat_play:I

    .line 2303
    .line 2304
    const/4 v3, 0x2

    .line 2305
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2306
    .line 2307
    .line 2308
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    .line 2310
    .line 2311
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2312
    .line 2313
    sget v4, Lnet/kaki87/soul2/testing/R$string;->local_file:I

    .line 2314
    .line 2315
    const/4 v3, 0x5

    .line 2316
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2317
    .line 2318
    .line 2319
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2320
    .line 2321
    .line 2322
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2323
    .line 2324
    sget v4, Lnet/kaki87/soul2/testing/R$string;->subtitle:I

    .line 2325
    .line 2326
    const/4 v3, 0x6

    .line 2327
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2328
    .line 2329
    .line 2330
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2331
    .line 2332
    .line 2333
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2334
    .line 2335
    const/4 v3, 0x7

    .line 2336
    move-object v4, v10

    .line 2337
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2338
    .line 2339
    .line 2340
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    .line 2342
    .line 2343
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2344
    .line 2345
    const/16 v3, 0x8

    .line 2346
    .line 2347
    move-object v4, v9

    .line 2348
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2349
    .line 2350
    .line 2351
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2352
    .line 2353
    .line 2354
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2355
    .line 2356
    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2358
    .line 2359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2360
    .line 2361
    .line 2362
    sget v2, Lnet/kaki87/soul2/testing/R$string;->keyboard_secure_info_1:I

    .line 2363
    .line 2364
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2365
    .line 2366
    .line 2367
    sget v2, Lnet/kaki87/soul2/testing/R$string;->keyboard_secure_info_2:I

    .line 2368
    .line 2369
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v6

    .line 2373
    new-instance v9, Ljava/util/ArrayList;

    .line 2374
    .line 2375
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2376
    .line 2377
    .line 2378
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2379
    .line 2380
    const-string v4, "Do Not Track"

    .line 2381
    .line 2382
    const/16 v2, 0x18

    .line 2383
    .line 2384
    const/4 v3, 0x1

    .line 2385
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2386
    .line 2387
    .line 2388
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    .line 2390
    .line 2391
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2392
    .line 2393
    const-string v4, "Global Privacy Control"

    .line 2394
    .line 2395
    const/4 v3, 0x2

    .line 2396
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 2397
    .line 2398
    .line 2399
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2400
    .line 2401
    .line 2402
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2403
    .line 2404
    sget v4, Lnet/kaki87/soul2/testing/R$string;->keyboard_secure:I

    .line 2405
    .line 2406
    const/4 v3, 0x4

    .line 2407
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2408
    .line 2409
    .line 2410
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    .line 2412
    .line 2413
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2414
    .line 2415
    sget v4, Lnet/kaki87/soul2/testing/R$string;->app_lock:I

    .line 2416
    .line 2417
    const/4 v6, 0x0

    .line 2418
    const/4 v3, 0x6

    .line 2419
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    .line 2424
    .line 2425
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2426
    .line 2427
    sget v4, Lnet/kaki87/soul2/testing/R$string;->only_secret:I

    .line 2428
    .line 2429
    const/4 v3, 0x7

    .line 2430
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2431
    .line 2432
    .line 2433
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    .line 2435
    .line 2436
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2437
    .line 2438
    sget v4, Lnet/kaki87/soul2/testing/R$string;->lock_reset_target:I

    .line 2439
    .line 2440
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/setting/SettingSecure;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v6

    .line 2444
    const/16 v3, 0x8

    .line 2445
    .line 2446
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2447
    .line 2448
    .line 2449
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    .line 2451
    .line 2452
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2453
    .line 2454
    sget v4, Lnet/kaki87/soul2/testing/R$string;->android_shot:I

    .line 2455
    .line 2456
    const/4 v6, 0x0

    .line 2457
    const/16 v3, 0xa

    .line 2458
    .line 2459
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2463
    .line 2464
    .line 2465
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2466
    .line 2467
    .line 2468
    new-instance v9, Ljava/util/ArrayList;

    .line 2469
    .line 2470
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2471
    .line 2472
    .line 2473
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2474
    .line 2475
    sget v4, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 2476
    .line 2477
    const/16 v2, 0x19

    .line 2478
    .line 2479
    const/4 v3, 0x1

    .line 2480
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2481
    .line 2482
    .line 2483
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2484
    .line 2485
    .line 2486
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2487
    .line 2488
    sget v4, Lnet/kaki87/soul2/testing/R$string;->secret_hist:I

    .line 2489
    .line 2490
    sget v5, Lnet/kaki87/soul2/testing/R$string;->secret_hist_info:I

    .line 2491
    .line 2492
    const/4 v3, 0x3

    .line 2493
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2494
    .line 2495
    .line 2496
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2497
    .line 2498
    .line 2499
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2500
    .line 2501
    sget v4, Lnet/kaki87/soul2/testing/R$string;->secret_down:I

    .line 2502
    .line 2503
    sget v5, Lnet/kaki87/soul2/testing/R$string;->secret_down_info:I

    .line 2504
    .line 2505
    const/4 v3, 0x4

    .line 2506
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2507
    .line 2508
    .line 2509
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    .line 2511
    .line 2512
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2513
    .line 2514
    sget v4, Lnet/kaki87/soul2/testing/R$string;->keep_tab:I

    .line 2515
    .line 2516
    sget v5, Lnet/kaki87/soul2/testing/R$string;->keep_tab_info:I

    .line 2517
    .line 2518
    const/4 v3, 0x6

    .line 2519
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2520
    .line 2521
    .line 2522
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    .line 2524
    .line 2525
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2526
    .line 2527
    sget v4, Lnet/kaki87/soul2/testing/R$string;->keep_login:I

    .line 2528
    .line 2529
    sget v5, Lnet/kaki87/soul2/testing/R$string;->keep_login_info:I

    .line 2530
    .line 2531
    const/4 v3, 0x7

    .line 2532
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    .line 2537
    .line 2538
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2539
    .line 2540
    sget v4, Lnet/kaki87/soul2/testing/R$string;->notification:I

    .line 2541
    .line 2542
    const/4 v5, 0x0

    .line 2543
    const/16 v3, 0x9

    .line 2544
    .line 2545
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2546
    .line 2547
    .line 2548
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    .line 2550
    .line 2551
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2552
    .line 2553
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 2554
    .line 2555
    sget v5, Lnet/kaki87/soul2/testing/R$string;->secret_reset_guide:I

    .line 2556
    .line 2557
    const/16 v3, 0xb

    .line 2558
    .line 2559
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2560
    .line 2561
    .line 2562
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    .line 2564
    .line 2565
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2566
    .line 2567
    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2569
    .line 2570
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2571
    .line 2572
    .line 2573
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 2574
    .line 2575
    invoke-static {v1, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2576
    .line 2577
    .line 2578
    sget v2, Lnet/kaki87/soul2/testing/R$string;->password_info:I

    .line 2579
    .line 2580
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v6

    .line 2584
    new-instance v8, Ljava/util/ArrayList;

    .line 2585
    .line 2586
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2587
    .line 2588
    .line 2589
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2590
    .line 2591
    sget v4, Lnet/kaki87/soul2/testing/R$string;->password_save:I

    .line 2592
    .line 2593
    const/4 v5, 0x0

    .line 2594
    const/16 v2, 0x1a

    .line 2595
    .line 2596
    const/4 v3, 0x1

    .line 2597
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2598
    .line 2599
    .line 2600
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    .line 2602
    .line 2603
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2604
    .line 2605
    sget v4, Lnet/kaki87/soul2/testing/R$string;->login_lock:I

    .line 2606
    .line 2607
    sget v5, Lnet/kaki87/soul2/testing/R$string;->login_lock_info:I

    .line 2608
    .line 2609
    const/4 v6, 0x0

    .line 2610
    const/4 v3, 0x2

    .line 2611
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2612
    .line 2613
    .line 2614
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    .line 2616
    .line 2617
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2618
    .line 2619
    sget v4, Lnet/kaki87/soul2/testing/R$string;->password_button:I

    .line 2620
    .line 2621
    sget v5, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 2622
    .line 2623
    const/4 v3, 0x3

    .line 2624
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2625
    .line 2626
    .line 2627
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    .line 2629
    .line 2630
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2631
    .line 2632
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 2633
    .line 2634
    const/4 v5, 0x0

    .line 2635
    const/4 v3, 0x4

    .line 2636
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2637
    .line 2638
    .line 2639
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    .line 2641
    .line 2642
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2643
    .line 2644
    sget v4, Lnet/kaki87/soul2/testing/R$string;->list:I

    .line 2645
    .line 2646
    const/4 v3, 0x6

    .line 2647
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2648
    .line 2649
    .line 2650
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    .line 2652
    .line 2653
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2654
    .line 2655
    sget v4, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 2656
    .line 2657
    const/4 v3, 0x7

    .line 2658
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2659
    .line 2660
    .line 2661
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    .line 2663
    .line 2664
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2665
    .line 2666
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 2667
    .line 2668
    sget v5, Lnet/kaki87/soul2/testing/R$string;->password_reset_guide:I

    .line 2669
    .line 2670
    const/16 v3, 0x9

    .line 2671
    .line 2672
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2673
    .line 2674
    .line 2675
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    .line 2677
    .line 2678
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2679
    .line 2680
    .line 2681
    new-instance v8, Ljava/util/ArrayList;

    .line 2682
    .line 2683
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2684
    .line 2685
    .line 2686
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2687
    .line 2688
    sget v4, Lnet/kaki87/soul2/testing/R$string;->now_delete:I

    .line 2689
    .line 2690
    const/4 v5, 0x0

    .line 2691
    const/16 v2, 0x1b

    .line 2692
    .line 2693
    const/4 v3, 0x1

    .line 2694
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2695
    .line 2696
    .line 2697
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    .line 2699
    .line 2700
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2701
    .line 2702
    sget v4, Lnet/kaki87/soul2/testing/R$string;->exit_delete:I

    .line 2703
    .line 2704
    sget v5, Lnet/kaki87/soul2/testing/R$string;->exit_guide:I

    .line 2705
    .line 2706
    const/4 v3, 0x3

    .line 2707
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2708
    .line 2709
    .line 2710
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2711
    .line 2712
    .line 2713
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2714
    .line 2715
    sget v4, Lnet/kaki87/soul2/testing/R$string;->exit_del_noti:I

    .line 2716
    .line 2717
    const/4 v5, 0x0

    .line 2718
    const/4 v3, 0x4

    .line 2719
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2720
    .line 2721
    .line 2722
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    .line 2724
    .line 2725
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2726
    .line 2727
    .line 2728
    new-instance v8, Ljava/util/ArrayList;

    .line 2729
    .line 2730
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2731
    .line 2732
    .line 2733
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2734
    .line 2735
    sget v4, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 2736
    .line 2737
    sget v5, Lnet/kaki87/soul2/testing/R$string;->not_support_locale:I

    .line 2738
    .line 2739
    const/16 v2, 0x1c

    .line 2740
    .line 2741
    const/4 v3, 0x1

    .line 2742
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2743
    .line 2744
    .line 2745
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    .line 2747
    .line 2748
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2749
    .line 2750
    sget v4, Lnet/kaki87/soul2/testing/R$string;->vpn_server:I

    .line 2751
    .line 2752
    const/4 v5, 0x0

    .line 2753
    const/4 v3, 0x3

    .line 2754
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2755
    .line 2756
    .line 2757
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    .line 2759
    .line 2760
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2761
    .line 2762
    sget v4, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 2763
    .line 2764
    const/4 v3, 0x4

    .line 2765
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2766
    .line 2767
    .line 2768
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2769
    .line 2770
    .line 2771
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2772
    .line 2773
    .line 2774
    new-instance v8, Ljava/util/ArrayList;

    .line 2775
    .line 2776
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2777
    .line 2778
    .line 2779
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2780
    .line 2781
    sget v4, Lnet/kaki87/soul2/testing/R$string;->app_ver:I

    .line 2782
    .line 2783
    const/16 v2, 0x21

    .line 2784
    .line 2785
    const/4 v3, 0x1

    .line 2786
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2787
    .line 2788
    .line 2789
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->webview_ver:I

    const/4 v3, 0x7

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    .line 2791
    .line 2792
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->source_code:I

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->bug_tracker:I

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 2815
    .line 2816
    sget v4, Lnet/kaki87/soul2/testing/R$string;->license:I

    .line 2817
    .line 2818
    const/4 v3, 0x4

    .line 2819
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Landroid/content/Context;IIIILjava/lang/String;)V

    .line 2820
    .line 2821
    .line 2822
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    .line 2847
    .line 2848
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2849
    .line 2850
    .line 2851
    return-object v7
.end method

.method public static P0(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/view/MyRoundView;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyRoundView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 44
    .line 45
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 46
    .line 47
    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    invoke-direct {v5, p0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x4

    .line 67
    invoke-virtual {v5, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 73
    .line 74
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 75
    .line 76
    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const v6, 0x800005

    .line 80
    .line 81
    .line 82
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    .line 84
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lcom/mycompany/app/view/MyEditPure;

    .line 93
    .line 94
    invoke-direct {v4, p0}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    const/16 v6, 0x10

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 104
    .line 105
    .line 106
    const/4 v7, 0x3

    .line 107
    invoke-virtual {v4, v7}, Landroid/view/View;->setTextDirection(I)V

    .line 108
    .line 109
    .line 110
    const/high16 v7, 0x41800000    # 16.0f

    .line 111
    .line 112
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    .line 114
    .line 115
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    const/16 v8, 0x1d

    .line 118
    .line 119
    if-lt v7, v8, :cond_1

    .line 120
    .line 121
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 122
    .line 123
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 124
    .line 125
    .line 126
    :cond_1
    const v7, 0x10000003

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 133
    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .line 138
    .line 139
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    .line 141
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 142
    .line 143
    invoke-direct {v6, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .line 145
    .line 146
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 147
    .line 148
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 149
    .line 150
    add-int/2addr v3, v7

    .line 151
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 152
    .line 153
    .line 154
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 155
    .line 156
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 157
    .line 158
    add-int/2addr v3, v7

    .line 159
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 166
    .line 167
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 168
    .line 169
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    iput-object v5, p0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 172
    .line 173
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 176
    .line 177
    if-nez v0, :cond_2

    .line 178
    .line 179
    return-void

    .line 180
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingMain$7;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingMain$7;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 191
    .line 192
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    const/16 v14, 0xb

    .line 19
    .line 20
    const/16 v15, 0xa

    .line 21
    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    const/16 v5, 0x8

    .line 25
    .line 26
    const/4 v6, 0x7

    .line 27
    const/4 v7, 0x6

    .line 28
    const/4 v8, 0x5

    .line 29
    const/4 v9, 0x4

    .line 30
    const/4 v10, 0x3

    .line 31
    const/4 v11, 0x2

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 35
    .line 36
    sget v12, Lnet/kaki87/soul2/testing/R$string;->general:I

    .line 37
    .line 38
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_24:I

    .line 39
    .line 40
    invoke-direct {v1, v3, v12, v13, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 47
    .line 48
    sget v12, Lnet/kaki87/soul2/testing/R$string;->advanced:I

    .line 49
    .line 50
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_suggest_dark_24:I

    .line 51
    .line 52
    invoke-direct {v1, v11, v12, v13, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v12, Lnet/kaki87/soul2/testing/R$string;->site:I

    .line 61
    .line 62
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 63
    .line 64
    invoke-direct {v1, v10, v12, v13, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 71
    .line 72
    sget v10, Lnet/kaki87/soul2/testing/R$string;->backup_title:I

    .line 73
    .line 74
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_autorenew_dark_24:I

    .line 75
    .line 76
    invoke-direct {v1, v9, v10, v12, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 83
    .line 84
    invoke-direct {v1, v8, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v7, Lnet/kaki87/soul2/testing/R$string;->clean_mode:I

    .line 105
    .line 106
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_24:I

    .line 107
    .line 108
    invoke-direct {v1, v6, v7, v8, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 115
    .line 116
    sget v6, Lnet/kaki87/soul2/testing/R$string;->down_set:I

    .line 117
    .line 118
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_24:I

    .line 119
    .line 120
    invoke-direct {v1, v5, v6, v7, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 127
    .line 128
    sget v5, Lnet/kaki87/soul2/testing/R$string;->media:I

    .line 129
    .line 130
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 131
    .line 132
    invoke-direct {v1, v4, v5, v6, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 139
    .line 140
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_save:I

    .line 141
    .line 142
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_energy_savings_leaf_dark_24:I

    .line 143
    .line 144
    invoke-direct {v1, v15, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 151
    .line 152
    invoke-direct {v1, v14, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 159
    .line 160
    sget v4, Lnet/kaki87/soul2/testing/R$string;->display_title:I

    .line 161
    .line 162
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_color_fill_dark_24:I

    .line 163
    .line 164
    const/16 v6, 0xc

    .line 165
    .line 166
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 173
    .line 174
    sget v4, Lnet/kaki87/soul2/testing/R$string;->layout_title:I

    .line 175
    .line 176
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_space_dashboard_dark_24:I

    .line 177
    .line 178
    const/16 v6, 0xd

    .line 179
    .line 180
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 187
    .line 188
    sget v4, Lnet/kaki87/soul2/testing/R$string;->list_menu:I

    .line 189
    .line 190
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_dashboard_customize_dark_24:I

    .line 191
    .line 192
    const/16 v6, 0xe

    .line 193
    .line 194
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 201
    .line 202
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 203
    .line 204
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_none_dark_24:I

    .line 205
    .line 206
    const/16 v6, 0xf

    .line 207
    .line 208
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 215
    .line 216
    sget v4, Lnet/kaki87/soul2/testing/R$string;->composition:I

    .line 217
    .line 218
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_build_dark_24:I

    .line 219
    .line 220
    const/16 v6, 0x10

    .line 221
    .line 222
    invoke-direct {v1, v6, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 229
    .line 230
    const/16 v4, 0x11

    .line 231
    .line 232
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 239
    .line 240
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_content:I

    .line 241
    .line 242
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_web_dark_24:I

    .line 243
    .line 244
    const/16 v6, 0x12

    .line 245
    .line 246
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 253
    .line 254
    sget v4, Lnet/kaki87/soul2/testing/R$string;->gesture:I

    .line 255
    .line 256
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_gesture_dark_24:I

    .line 257
    .line 258
    const/16 v6, 0x13

    .line 259
    .line 260
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 267
    .line 268
    sget v4, Lnet/kaki87/soul2/testing/R$string;->translator:I

    .line 269
    .line 270
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_translate_dark_24:I

    .line 271
    .line 272
    const/16 v6, 0x14

    .line 273
    .line 274
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 281
    .line 282
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tts_mode:I

    .line 283
    .line 284
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_to_speech_dark_24:I

    .line 285
    .line 286
    const/16 v6, 0x15

    .line 287
    .line 288
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 295
    .line 296
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tv_cast:I

    .line 297
    .line 298
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cast_dark_24:I

    .line 299
    .line 300
    const/16 v6, 0x16

    .line 301
    .line 302
    invoke-direct {v1, v6, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 309
    .line 310
    const/16 v4, 0x17

    .line 311
    .line 312
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 319
    .line 320
    sget v4, Lnet/kaki87/soul2/testing/R$string;->security:I

    .line 321
    .line 322
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_security_dark_24:I

    .line 323
    .line 324
    const/16 v6, 0x18

    .line 325
    .line 326
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 333
    .line 334
    sget v4, Lnet/kaki87/soul2/testing/R$string;->secret_mode:I

    .line 335
    .line 336
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_dark_24:I

    .line 337
    .line 338
    const/16 v6, 0x19

    .line 339
    .line 340
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 347
    .line 348
    sget v4, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 349
    .line 350
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_24:I

    .line 351
    .line 352
    const/16 v6, 0x1a

    .line 353
    .line 354
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 361
    .line 362
    sget v4, Lnet/kaki87/soul2/testing/R$string;->clear_data:I

    .line 363
    .line 364
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_sweep_dark_24:I

    .line 365
    .line 366
    const/16 v6, 0x1b

    .line 367
    .line 368
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 375
    .line 376
    sget v4, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 377
    .line 378
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_dark_24:I

    .line 379
    .line 380
    const/16 v6, 0x1c

    .line 381
    .line 382
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->warp:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_dark_24:I

    const/16 v6, 0x22

    invoke-direct {v1, v6, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 389
    .line 390
    const/16 v4, 0x1d

    .line 391
    .line 392
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 441
    .line 442
    sget v3, Lnet/kaki87/soul2/testing/R$string;->info:I

    .line 443
    .line 444
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_info_dark_24:I

    .line 445
    .line 446
    const/16 v5, 0x21

    .line 447
    .line 448
    const/4 v6, 0x3

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 457
    .line 458
    sget v12, Lnet/kaki87/soul2/testing/R$string;->general:I

    .line 459
    .line 460
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_24:I

    .line 461
    .line 462
    invoke-direct {v1, v3, v12, v13, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 469
    .line 470
    sget v12, Lnet/kaki87/soul2/testing/R$string;->advanced:I

    .line 471
    .line 472
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_suggest_black_24:I

    .line 473
    .line 474
    invoke-direct {v1, v11, v12, v13, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 481
    .line 482
    sget v12, Lnet/kaki87/soul2/testing/R$string;->site:I

    .line 483
    .line 484
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 485
    .line 486
    invoke-direct {v1, v10, v12, v13, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 493
    .line 494
    sget v10, Lnet/kaki87/soul2/testing/R$string;->backup_title:I

    .line 495
    .line 496
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_autorenew_black_24:I

    .line 497
    .line 498
    invoke-direct {v1, v9, v10, v12, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 505
    .line 506
    invoke-direct {v1, v8, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v7, Lnet/kaki87/soul2/testing/R$string;->clean_mode:I

    .line 527
    .line 528
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 529
    .line 530
    invoke-direct {v1, v6, v7, v8, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 537
    .line 538
    sget v6, Lnet/kaki87/soul2/testing/R$string;->down_set:I

    .line 539
    .line 540
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_24:I

    .line 541
    .line 542
    invoke-direct {v1, v5, v6, v7, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 549
    .line 550
    sget v5, Lnet/kaki87/soul2/testing/R$string;->media:I

    .line 551
    .line 552
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 553
    .line 554
    invoke-direct {v1, v4, v5, v6, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 561
    .line 562
    sget v4, Lnet/kaki87/soul2/testing/R$string;->mem_save:I

    .line 563
    .line 564
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_energy_savings_leaf_black_24:I

    .line 565
    .line 566
    invoke-direct {v1, v15, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 573
    .line 574
    invoke-direct {v1, v14, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 581
    .line 582
    sget v4, Lnet/kaki87/soul2/testing/R$string;->display_title:I

    .line 583
    .line 584
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_color_fill_black_24:I

    .line 585
    .line 586
    const/16 v6, 0xc

    .line 587
    .line 588
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 595
    .line 596
    sget v4, Lnet/kaki87/soul2/testing/R$string;->layout_title:I

    .line 597
    .line 598
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_space_dashboard_black_24:I

    .line 599
    .line 600
    const/16 v6, 0xd

    .line 601
    .line 602
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 609
    .line 610
    sget v4, Lnet/kaki87/soul2/testing/R$string;->list_menu:I

    .line 611
    .line 612
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_dashboard_customize_black_24:I

    .line 613
    .line 614
    const/16 v6, 0xe

    .line 615
    .line 616
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 623
    .line 624
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 625
    .line 626
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_none_black_24:I

    .line 627
    .line 628
    const/16 v6, 0xf

    .line 629
    .line 630
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 637
    .line 638
    sget v4, Lnet/kaki87/soul2/testing/R$string;->composition:I

    .line 639
    .line 640
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_build_black_24:I

    .line 641
    .line 642
    const/16 v6, 0x10

    .line 643
    .line 644
    invoke-direct {v1, v6, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 651
    .line 652
    const/16 v4, 0x11

    .line 653
    .line 654
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 661
    .line 662
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_content:I

    .line 663
    .line 664
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_web_black_24:I

    .line 665
    .line 666
    const/16 v6, 0x12

    .line 667
    .line 668
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 675
    .line 676
    sget v4, Lnet/kaki87/soul2/testing/R$string;->gesture:I

    .line 677
    .line 678
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_gesture_black_24:I

    .line 679
    .line 680
    const/16 v6, 0x13

    .line 681
    .line 682
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 689
    .line 690
    sget v4, Lnet/kaki87/soul2/testing/R$string;->translator:I

    .line 691
    .line 692
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_translate_black_24:I

    .line 693
    .line 694
    const/16 v6, 0x14

    .line 695
    .line 696
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 703
    .line 704
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tts_mode:I

    .line 705
    .line 706
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_to_speech_black_24:I

    .line 707
    .line 708
    const/16 v6, 0x15

    .line 709
    .line 710
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 717
    .line 718
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tv_cast:I

    .line 719
    .line 720
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cast_black_24:I

    .line 721
    .line 722
    const/16 v6, 0x16

    .line 723
    .line 724
    invoke-direct {v1, v6, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 731
    .line 732
    const/16 v4, 0x17

    .line 733
    .line 734
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 741
    .line 742
    sget v4, Lnet/kaki87/soul2/testing/R$string;->security:I

    .line 743
    .line 744
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_security_black_24:I

    .line 745
    .line 746
    const/16 v6, 0x18

    .line 747
    .line 748
    invoke-direct {v1, v6, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 755
    .line 756
    sget v4, Lnet/kaki87/soul2/testing/R$string;->secret_mode:I

    .line 757
    .line 758
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_black_24:I

    .line 759
    .line 760
    const/16 v6, 0x19

    .line 761
    .line 762
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 769
    .line 770
    sget v4, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 771
    .line 772
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_24:I

    .line 773
    .line 774
    const/16 v6, 0x1a

    .line 775
    .line 776
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 783
    .line 784
    sget v4, Lnet/kaki87/soul2/testing/R$string;->clear_data:I

    .line 785
    .line 786
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_sweep_black_24:I

    .line 787
    .line 788
    const/16 v6, 0x1b

    .line 789
    .line 790
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 797
    .line 798
    sget v4, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 799
    .line 800
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_black_24:I

    .line 801
    .line 802
    const/16 v6, 0x1c

    .line 803
    .line 804
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->warp:I

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_black_24:I

    const/16 v6, 0x22

    invoke-direct {v1, v6, v4, v5, v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 811
    .line 812
    const/16 v4, 0x1d

    .line 813
    .line 814
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 863
    .line 864
    sget v3, Lnet/kaki87/soul2/testing/R$string;->info:I

    .line 865
    .line 866
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_info_black_24:I

    .line 867
    .line 868
    const/16 v5, 0x21

    .line 869
    .line 870
    const/4 v6, 0x3

    invoke-direct {v1, v5, v3, v4, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    :goto_0
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 877
    .line 878
    const/16 v3, 0x22

    .line 879
    .line 880
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-object/from16 v1, p0

    .line 887
    .line 888
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingMain;->o2:Ljava/util/ArrayList;

    .line 889
    .line 890
    return-object v0
.end method

.method public final Q0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/setting/SettingMain;->b2:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lcom/mycompany/app/setting/SettingMain;->b2:I

    .line 8
    .line 9
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->w7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->e2:Z

    .line 13
    .line 14
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingMain;->e2:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->T0()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->W5()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingMain;->c2:Z

    .line 28
    .line 29
    if-eq v1, v0, :cond_2

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->c2:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p7(Landroid/widget/EditText;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final R0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->n2:Lcom/mycompany/app/setting/SettingMain$SearchTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->n2:Lcom/mycompany/app/setting/SettingMain$SearchTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/setting/SettingMain$SearchTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/setting/SettingMain$SearchTask;-><init>(Lcom/mycompany/app/setting/SettingMain;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->n2:Lcom/mycompany/app/setting/SettingMain$SearchTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final S0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingListAdapter;->i:Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->n2:Lcom/mycompany/app/setting/SettingMain$SearchTask;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 21
    .line 22
    :cond_2
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->n2:Lcom/mycompany/app/setting/SettingMain$SearchTask;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundView;->a()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 60
    .line 61
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 62
    .line 63
    return-void
.end method

.method public final T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_20:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    const v1, -0xc0c0c1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_20:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    const/high16 v1, 0x21000000

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final finish()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->Y1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->a2:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingMain;->Y1:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "EXTRA_PRELOAD"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "EXTRA_FILTER"

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/mycompany/app/setting/SettingMain;->Z1:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingMain;->a2:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v1, "EXTRA_STATUS"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    :cond_2
    const/4 v1, -0x1

    .line 41
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    if-ne p2, v1, :cond_5

    .line 8
    .line 9
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingMain;->Y1:Z

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingMain;->Z1:Z

    .line 12
    .line 13
    if-nez p1, :cond_5

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const-string p1, "EXTRA_FILTER"

    .line 18
    .line 19
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingMain;->Z1:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingMain;->Z1:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    if-ne p1, v2, :cond_2

    .line 30
    .line 31
    if-ne p2, v1, :cond_5

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingMain;->a2:Z

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/4 p3, 0x4

    .line 37
    if-ne p1, p3, :cond_3

    .line 38
    .line 39
    if-ne p2, v1, :cond_5

    .line 40
    .line 41
    new-instance p1, Landroid/content/Intent;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 44
    .line 45
    const-class p3, Lcom/mycompany/app/setting/SettingSecure;

    .line 46
    .line 47
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const/4 p3, 0x5

    .line 55
    if-ne p1, p3, :cond_4

    .line 56
    .line 57
    if-ne p2, v1, :cond_5

    .line 58
    .line 59
    new-instance p1, Landroid/content/Intent;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 62
    .line 63
    const-class p3, Lcom/mycompany/app/setting/SettingSecret;

    .line 64
    .line 65
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    const/4 p3, 0x2

    .line 73
    if-ne p1, p3, :cond_5

    .line 74
    .line 75
    if-ne p2, v1, :cond_5

    .line 76
    .line 77
    new-instance p1, Landroid/content/Intent;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 80
    .line 81
    const-class p3, Lcom/mycompany/app/setting/SettingPassword;

    .line 82
    .line 83
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public final l0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->S0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->D0()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->finish()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingMain;->e2:Z

    .line 5
    .line 6
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->e2:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->T0()V

    .line 13
    .line 14
    .line 15
    :cond_0
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/setting/SettingMain;->b2:I

    .line 19
    .line 20
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->W5()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingMain;->c2:Z

    .line 25
    .line 26
    const/16 p1, 0x20

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 46
    .line 47
    .line 48
    sget v0, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, p1, p1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 54
    .line 55
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingMain$1;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMain$1;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->S0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->X1:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->o2:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMain;->p2:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->S0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->D0()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMain;->p2:Ljava/util/ArrayList;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMain;->Q0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
