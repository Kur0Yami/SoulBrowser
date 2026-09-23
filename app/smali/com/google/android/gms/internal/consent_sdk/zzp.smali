.class final Lcom/google/android/gms/internal/consent_sdk/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zzn;

.field public final b:Landroid/app/Activity;

.field public final c:Lcom/google/android/ump/ConsentDebugSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzn;Landroid/app/Activity;Lcom/google/android/ump/ConsentDebugSettings;Lcom/google/android/ump/ConsentRequestParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->a:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->c:Lcom/google/android/ump/ConsentDebugSettings;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/consent_sdk/zzp;)Lcom/google/android/gms/internal/consent_sdk/zzcl;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->e:Ljava/util/Map;

    .line 9
    .line 10
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->i:Ljava/util/List;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->a:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzn;->a:Landroid/app/Application;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    move-object v4, v3

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/16 v6, 0x80

    .line 36
    .line 37
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-object v4, v3

    .line 45
    :goto_0
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const-string v5, "com.google.android.gms.ads.APPLICATION_ID"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v4, v3

    .line 55
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_d

    .line 60
    .line 61
    :goto_2
    iput-object v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->a:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->c:Lcom/google/android/ump/ConsentDebugSettings;

    .line 64
    .line 65
    iget-boolean v4, v4, Lcom/google/android/ump/ConsentDebugSettings;->a:Z

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->c:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_3
    iput-object v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->i:Ljava/util/List;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzn;->b:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->a()Ljava/util/HashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->e:Ljava/util/Map;

    .line 91
    .line 92
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->d:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->c:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzch;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    iput v4, v1, Lcom/google/android/gms/internal/consent_sdk/zzch;->c:I

    .line 113
    .line 114
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iput-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzch;->b:Ljava/lang/Integer;

    .line 121
    .line 122
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzch;->a:Ljava/lang/String;

    .line 125
    .line 126
    const/4 v5, 0x2

    .line 127
    iput v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzch;->c:I

    .line 128
    .line 129
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->b:Lcom/google/android/gms/internal/consent_sdk/zzch;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 144
    .line 145
    .line 146
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;

    .line 147
    .line 148
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 152
    .line 153
    iput-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->d:Ljava/util/List;

    .line 154
    .line 155
    iget v7, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 156
    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    iput-object v7, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->a:Ljava/lang/Integer;

    .line 162
    .line 163
    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 164
    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->b:Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 180
    .line 181
    float-to-double v7, v1

    .line 182
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iput-object v1, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->c:Ljava/lang/Double;

    .line 187
    .line 188
    const/16 v1, 0x1c

    .line 189
    .line 190
    if-ge v4, v1, :cond_3

    .line 191
    .line 192
    goto/16 :goto_8

    .line 193
    .line 194
    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->b:Landroid/app/Activity;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    if-nez p0, :cond_4

    .line 201
    .line 202
    move-object p0, v3

    .line 203
    goto :goto_4

    .line 204
    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    :goto_4
    if-nez p0, :cond_5

    .line 209
    .line 210
    move-object p0, v3

    .line 211
    goto :goto_5

    .line 212
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    :goto_5
    if-nez p0, :cond_6

    .line 217
    .line 218
    move-object p0, v3

    .line 219
    goto :goto_6

    .line 220
    :cond_6
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    :goto_6
    if-nez p0, :cond_7

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_7
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 228
    .line 229
    .line 230
    new-instance v6, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    :cond_8
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_9

    .line 248
    .line 249
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Landroid/graphics/Rect;

    .line 254
    .line 255
    if-eqz v4, :cond_8

    .line 256
    .line 257
    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzci;

    .line 258
    .line 259
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 260
    .line 261
    .line 262
    iget v8, v4, Landroid/graphics/Rect;->left:I

    .line 263
    .line 264
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    iput-object v8, v7, Lcom/google/android/gms/internal/consent_sdk/zzci;->b:Ljava/lang/Integer;

    .line 269
    .line 270
    iget v8, v4, Landroid/graphics/Rect;->right:I

    .line 271
    .line 272
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    iput-object v8, v7, Lcom/google/android/gms/internal/consent_sdk/zzci;->c:Ljava/lang/Integer;

    .line 277
    .line 278
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 279
    .line 280
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    iput-object v8, v7, Lcom/google/android/gms/internal/consent_sdk/zzci;->a:Ljava/lang/Integer;

    .line 285
    .line 286
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 287
    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    iput-object v4, v7, Lcom/google/android/gms/internal/consent_sdk/zzci;->d:Ljava/lang/Integer;

    .line 293
    .line 294
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_9
    :goto_8
    iput-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->d:Ljava/util/List;

    .line 299
    .line 300
    iput-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->f:Lcom/google/android/gms/internal/consent_sdk/zzcj;

    .line 301
    .line 302
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    const/4 v5, 0x0

    .line 311
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 312
    .line 313
    .line 314
    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    goto :goto_9

    .line 316
    :catch_1
    move-object p0, v3

    .line 317
    :goto_9
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzcf;

    .line 318
    .line 319
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    iput-object v5, v4, Lcom/google/android/gms/internal/consent_sdk/zzcf;->a:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    if-eqz v2, :cond_a

    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    :cond_a
    iput-object v3, v4, Lcom/google/android/gms/internal/consent_sdk/zzcf;->b:Ljava/lang/String;

    .line 347
    .line 348
    if-eqz p0, :cond_c

    .line 349
    .line 350
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 351
    .line 352
    if-lt v2, v1, :cond_b

    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 355
    .line 356
    .line 357
    move-result-wide v1

    .line 358
    goto :goto_a

    .line 359
    :cond_b
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 360
    .line 361
    int-to-long v1, p0

    .line 362
    :goto_a
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    iput-object p0, v4, Lcom/google/android/gms/internal/consent_sdk/zzcf;->c:Ljava/lang/String;

    .line 367
    .line 368
    :cond_c
    iput-object v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->g:Lcom/google/android/gms/internal/consent_sdk/zzcf;

    .line 369
    .line 370
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 371
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v1, "4.0.0"

    .line 376
    .line 377
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzck;->a:Ljava/lang/String;

    .line 378
    .line 379
    iput-object p0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->h:Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 380
    .line 381
    return-object v0

    .line 382
    :cond_d
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 383
    .line 384
    const/4 v0, 0x3

    .line 385
    const-string v1, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 386
    .line 387
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw p0
.end method
