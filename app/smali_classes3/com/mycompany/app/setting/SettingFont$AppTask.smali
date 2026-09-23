.class Lcom/mycompany/app/setting/SettingFont$AppTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/ArrayList;

.field public final g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->g:Z

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->h:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/setting/SettingFont;

    .line 14
    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v5, 0x21

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    if-lt v4, v5, :cond_2

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_0
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :catch_0
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_14

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 78
    .line 79
    iget-boolean v5, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    iput-object v7, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_5
    if-nez v4, :cond_6

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 92
    .line 93
    if-nez v5, :cond_7

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 97
    .line 98
    and-int/2addr v5, v2

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_8
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_9

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_9
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const-string v8, "font"

    .line 118
    .line 119
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_a

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_a
    iget-object v5, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-nez v5, :cond_b

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_b
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-nez v5, :cond_c

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_c
    const-string v8, ""

    .line 143
    .line 144
    invoke-virtual {v5, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    if-eqz v8, :cond_4

    .line 149
    .line 150
    array-length v9, v8

    .line 151
    if-nez v9, :cond_d

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_d
    array-length v9, v8

    .line 155
    move v10, v6

    .line 156
    :goto_2
    if-ge v10, v9, :cond_4

    .line 157
    .line 158
    aget-object v11, v8, v10

    .line 159
    .line 160
    iget-boolean v12, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 161
    .line 162
    if-eqz v12, :cond_e

    .line 163
    .line 164
    iput-object v7, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 165
    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :cond_e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-eqz v12, :cond_f

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_f
    const/16 v12, 0x2e

    .line 176
    .line 177
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    const/4 v13, -0x1

    .line 182
    if-ne v12, v13, :cond_11

    .line 183
    .line 184
    invoke-static {v1, v5, v4, v11}, Lcom/mycompany/app/setting/SettingFont;->D0(Lcom/mycompany/app/setting/SettingFont;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    if-eqz v11, :cond_13

    .line 189
    .line 190
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-eqz v12, :cond_10

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_10
    iget-object v12, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_11
    const-string v12, ".ttf"

    .line 204
    .line 205
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-nez v12, :cond_12

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v13, "app://"

    .line 218
    .line 219
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v13, "/"

    .line 229
    .line 230
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    new-instance v13, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 240
    .line 241
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    iput-object v12, v13, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 249
    .line 250
    iput-object v11, v13, Lcom/mycompany/app/setting/SettingFont$FontItem;->c:Ljava/lang/String;

    .line 251
    .line 252
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 253
    .line 254
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    iput-object v12, v13, Lcom/mycompany/app/setting/SettingFont$FontItem;->d:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v5, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    iput-object v11, v13, Lcom/mycompany/app/setting/SettingFont$FontItem;->e:Landroid/graphics/Typeface;

    .line 265
    .line 266
    iget-object v11, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    .line 270
    .line 271
    :cond_13
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :catch_1
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 275
    .line 276
    if-eqz v0, :cond_15

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_15

    .line 283
    .line 284
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 285
    .line 286
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$SortFont;

    .line 287
    .line 288
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 289
    .line 290
    .line 291
    :try_start_2
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 292
    .line 293
    .line 294
    :catch_2
    :cond_15
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->f:Ljava/util/ArrayList;

    .line 295
    .line 296
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingFont;->e2:Ljava/util/ArrayList;

    .line 297
    .line 298
    iput-boolean v2, v1, Lcom/mycompany/app/setting/SettingFont;->c2:Z

    .line 299
    .line 300
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->g:Z

    .line 301
    .line 302
    iget v2, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->h:I

    .line 303
    .line 304
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/setting/SettingFont;->H0(Lcom/mycompany/app/setting/SettingFont;ZI)V

    .line 305
    .line 306
    .line 307
    :cond_16
    :goto_4
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/setting/SettingFont;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$AppTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/setting/SettingFont;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingFont;->I0(Lcom/mycompany/app/setting/SettingFont;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
