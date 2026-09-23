.class final Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/pm/PackageManager;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public g:Z

.field public final h:Landroid/content/BroadcastReceiver;

.field public final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$1;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->h:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$2;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->i:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->a:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->b:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    .line 28
    .line 29
    new-instance p2, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->c:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->d:Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x1e

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->a:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->d:Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-lt v1, v2, :cond_3

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 56
    .line 57
    iget-boolean v6, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->f:Z

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move-object v0, v1

    .line 79
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 80
    .line 81
    const-string v2, "android.media.MediaRouteProviderService"

    .line 82
    .line 83
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move v2, v5

    .line 95
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    iget-object v6, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->b:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    .line 100
    .line 101
    const/4 v7, 0x1

    .line 102
    iget-object v8, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->e:Ljava/util/ArrayList;

    .line 103
    .line 104
    if-eqz v4, :cond_10

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 111
    .line 112
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 113
    .line 114
    if-nez v4, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->n()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_8

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_6

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    move v10, v5

    .line 135
    :cond_7
    if-ge v10, v9, :cond_8

    .line 136
    .line 137
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    add-int/lit8 v10, v10, 0x1

    .line 142
    .line 143
    check-cast v11, Landroid/content/pm/ServiceInfo;

    .line 144
    .line 145
    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v13, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    if-eqz v12, :cond_7

    .line 154
    .line 155
    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    :goto_2
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    move v12, v5

    .line 175
    :goto_3
    if-ge v12, v11, :cond_a

    .line 176
    .line 177
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    check-cast v13, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 182
    .line 183
    iget-object v13, v13, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->m:Landroid/content/ComponentName;

    .line 184
    .line 185
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    if-eqz v14, :cond_9

    .line 194
    .line 195
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    if-eqz v13, :cond_9

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_a
    const/4 v12, -0x1

    .line 210
    :goto_4
    if-gez v12, :cond_c

    .line 211
    .line 212
    new-instance v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 213
    .line 214
    new-instance v10, Landroid/content/ComponentName;

    .line 215
    .line 216
    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 219
    .line 220
    invoke-direct {v10, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {v9, v3, v10}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 224
    .line 225
    .line 226
    new-instance v4, Landroidx/mediarouter/media/e;

    .line 227
    .line 228
    invoke-direct {v4, p0, v9}, Landroidx/mediarouter/media/e;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;Landroidx/mediarouter/media/RegisteredMediaRouteProvider;)V

    .line 229
    .line 230
    .line 231
    iput-object v4, v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->t:Landroidx/mediarouter/media/e;

    .line 232
    .line 233
    iget-boolean v4, v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 234
    .line 235
    if-nez v4, :cond_b

    .line 236
    .line 237
    iput-boolean v7, v9, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 238
    .line 239
    invoke-virtual {v9}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->l()V

    .line 240
    .line 241
    .line 242
    :cond_b
    add-int/lit8 v4, v2, 0x1

    .line 243
    .line 244
    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    check-cast v6, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 248
    .line 249
    invoke-virtual {v6, v9, v5}, Landroidx/mediarouter/media/GlobalMediaRouter;->a(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 250
    .line 251
    .line 252
    :goto_5
    move v2, v4

    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_c
    if-lt v12, v2, :cond_4

    .line 256
    .line 257
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 262
    .line 263
    iget-boolean v6, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 264
    .line 265
    if-nez v6, :cond_d

    .line 266
    .line 267
    iput-boolean v7, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 268
    .line 269
    invoke-virtual {v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->l()V

    .line 270
    .line 271
    .line 272
    :cond_d
    iget-object v6, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 273
    .line 274
    if-nez v6, :cond_f

    .line 275
    .line 276
    iget-boolean v6, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 277
    .line 278
    if-eqz v6, :cond_f

    .line 279
    .line 280
    iget-object v6, v4, Landroidx/mediarouter/media/MediaRouteProvider;->i:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 281
    .line 282
    if-eqz v6, :cond_e

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_e
    iget-object v6, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->o:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-nez v6, :cond_f

    .line 292
    .line 293
    :goto_6
    invoke-virtual {v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->k()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->h()V

    .line 297
    .line 298
    .line 299
    :cond_f
    add-int/lit8 v4, v2, 0x1

    .line 300
    .line 301
    invoke-static {v8, v12, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-ge v2, v0, :cond_12

    .line 310
    .line 311
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    sub-int/2addr v0, v7

    .line 316
    :goto_7
    if-lt v0, v2, :cond_12

    .line 317
    .line 318
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 323
    .line 324
    move-object v3, v6

    .line 325
    check-cast v3, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 326
    .line 327
    invoke-virtual {v3, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->k(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    iput-object v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->t:Landroidx/mediarouter/media/e;

    .line 335
    .line 336
    iget-boolean v3, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 337
    .line 338
    if-eqz v3, :cond_11

    .line 339
    .line 340
    iput-boolean v5, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->p:Z

    .line 341
    .line 342
    invoke-virtual {v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->l()V

    .line 343
    .line 344
    .line 345
    :cond_11
    add-int/lit8 v0, v0, -0x1

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_12
    :goto_8
    return-void
.end method
