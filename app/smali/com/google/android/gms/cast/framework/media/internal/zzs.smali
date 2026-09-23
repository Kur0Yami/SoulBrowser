.class public final Lcom/google/android/gms/cast/framework/media/internal/zzs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final c:Lcom/google/android/gms/internal/cast/zzbx;

.field public final d:Lcom/google/android/gms/cast/framework/SessionManager;

.field public final e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public final f:Landroid/content/ComponentName;

.field public final g:Landroid/content/ComponentName;

.field public final h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public final i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public final j:Lcom/google/android/gms/cast/framework/media/internal/zzm;

.field public final k:Lcom/google/android/gms/internal/cast/zzfk;

.field public final l:Ljava/lang/Runnable;

.field public final m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

.field public n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field public o:Lcom/google/android/gms/cast/CastDevice;

.field public p:Landroid/support/v4/media/session/MediaSessionCompat;

.field public q:Z

.field public r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaSessionManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbx;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->c:Lcom/google/android/gms/internal/cast/zzbx;

    .line 9
    .line 10
    sget-object p3, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 11
    .line 12
    const-string p3, "Must be called from the main thread."

    .line 13
    .line 14
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p3, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p3, v0

    .line 28
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->d:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 29
    .line 30
    iget-object p3, p2, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 31
    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v1, p3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->h:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 37
    .line 38
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 39
    .line 40
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzr;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzr;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzs;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 46
    .line 47
    if-nez p3, :cond_2

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object v1, p3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->f:Ljava/lang/String;

    .line 52
    .line 53
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    new-instance v2, Landroid/content/ComponentName;

    .line 60
    .line 61
    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move-object v2, v0

    .line 66
    :goto_3
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->f:Landroid/content/ComponentName;

    .line 67
    .line 68
    if-nez p3, :cond_4

    .line 69
    .line 70
    move-object p3, v0

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->c:Ljava/lang/String;

    .line 73
    .line 74
    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    new-instance v1, Landroid/content/ComponentName;

    .line 81
    .line 82
    invoke-direct {v1, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_5
    move-object v1, v0

    .line 87
    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->g:Landroid/content/ComponentName;

    .line 88
    .line 89
    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 90
    .line 91
    invoke-direct {p3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 95
    .line 96
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzn;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzs;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 102
    .line 103
    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 104
    .line 105
    invoke-direct {p3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 109
    .line 110
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzs;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 116
    .line 117
    new-instance p3, Lcom/google/android/gms/internal/cast/zzfk;

    .line 118
    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 124
    .line 125
    .line 126
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->k:Lcom/google/android/gms/internal/cast/zzfk;

    .line 127
    .line 128
    sget-object p3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 129
    .line 130
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 131
    .line 132
    if-nez p2, :cond_6

    .line 133
    .line 134
    goto/16 :goto_d

    .line 135
    .line 136
    :cond_6
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->h:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 137
    .line 138
    if-nez p2, :cond_7

    .line 139
    .line 140
    goto/16 :goto_d

    .line 141
    .line 142
    :cond_7
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:Lcom/google/android/gms/cast/framework/media/zzg;

    .line 143
    .line 144
    if-nez p2, :cond_8

    .line 145
    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_8
    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/internal/zzt;->b(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const/4 v2, 0x0

    .line 153
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/cast/framework/media/zzg;->zzg()[I

    .line 154
    .line 155
    .line 156
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_6

    .line 158
    :catch_0
    move-exception p2

    .line 159
    sget-object v3, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 160
    .line 161
    const/4 v4, 0x2

    .line 162
    new-array v4, v4, [Ljava/lang/Object;

    .line 163
    .line 164
    const-string v5, "getCompactViewActionIndices"

    .line 165
    .line 166
    aput-object v5, v4, v2

    .line 167
    .line 168
    const-string v5, "zzg"

    .line 169
    .line 170
    const/4 v6, 0x1

    .line 171
    aput-object v5, v4, v6

    .line 172
    .line 173
    iget-object v5, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 174
    .line 175
    const-string v6, "Unable to call %s on %s."

    .line 176
    .line 177
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v5, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    move-object p2, v0

    .line 185
    :goto_6
    if-nez v1, :cond_9

    .line 186
    .line 187
    move v3, v2

    .line 188
    goto :goto_7

    .line 189
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    :goto_7
    const-string v4, "NotificationActionsProvider"

    .line 194
    .line 195
    if-eqz v1, :cond_11

    .line 196
    .line 197
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_a

    .line 202
    .line 203
    goto :goto_c

    .line 204
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const/4 v5, 0x5

    .line 209
    if-le v1, v5, :cond_b

    .line 210
    .line 211
    new-array p1, v2, [Ljava/lang/Object;

    .line 212
    .line 213
    const-string p2, " provides more than 5 actions."

    .line 214
    .line 215
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    iget-object v1, p3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto :goto_d

    .line 229
    :cond_b
    if-eqz p2, :cond_10

    .line 230
    .line 231
    array-length v1, p2

    .line 232
    if-nez v1, :cond_c

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_c
    move v5, v2

    .line 236
    :goto_8
    if-ge v5, v1, :cond_f

    .line 237
    .line 238
    aget v6, p2, v5

    .line 239
    .line 240
    if-ltz v6, :cond_e

    .line 241
    .line 242
    if-lt v6, v3, :cond_d

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_e
    :goto_9
    new-array p1, v2, [Ljava/lang/Object;

    .line 249
    .line 250
    const-string p2, "provides a compact view action whose index is out of bounds."

    .line 251
    .line 252
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    iget-object v1, p3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_f
    :goto_a
    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 267
    .line 268
    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzm;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    goto :goto_d

    .line 272
    :cond_10
    :goto_b
    new-array p1, v2, [Ljava/lang/Object;

    .line 273
    .line 274
    const-string p2, " doesn\'t provide any actions for compact view."

    .line 275
    .line 276
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    iget-object v1, p3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    goto :goto_d

    .line 290
    :cond_11
    :goto_c
    new-array p1, v2, [Ljava/lang/Object;

    .line 291
    .line 292
    const-string p2, " doesn\'t provide any action."

    .line 293
    .line 294
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    iget-object v1, p3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :goto_d
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->j:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 308
    .line 309
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzq;

    .line 310
    .line 311
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzq;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzs;)V

    .line 312
    .line 313
    .line 314
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->l:Ljava/lang/Runnable;

    .line 315
    .line 316
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move-object v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 9
    .line 10
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->q:Z

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_4

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->g:Landroid/content/ComponentName;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->u(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 40
    .line 41
    new-instance p1, Landroid/content/Intent;

    .line 42
    .line 43
    const-string p2, "android.intent.action.MEDIA_BUTTON"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const/high16 p2, 0x4000000

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v3, v4, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-boolean p2, v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->j:Z

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 65
    .line 66
    const-string v5, "CastMediaSession"

    .line 67
    .line 68
    invoke-direct {p2, v3, v5, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 72
    .line 73
    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->d(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 89
    .line 90
    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget v1, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    .line 98
    .line 99
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 100
    .line 101
    iget-object v3, v3, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 102
    .line 103
    new-array v5, v2, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v3, v5, v4

    .line 106
    .line 107
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 112
    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzp;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzp;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzs;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->c:Lcom/google/android/gms/internal/cast/zzbx;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {p2}, Landroidx/mediarouter/media/MediaRouter;->r(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->q:Z

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    :goto_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 152
    .line 153
    const-string p2, "skip attaching media session"

    .line 154
    .line 155
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 156
    .line 157
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final b()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->F()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->e()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaQueueItem;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    move-object v3, v4

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->d(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->h()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->j()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    if-eqz v2, :cond_f

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->j:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 54
    .line 55
    if-eqz v3, :cond_e

    .line 56
    .line 57
    const-string v4, "Update media notification."

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    new-array v6, v5, [Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v7, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 63
    .line 64
    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 68
    .line 69
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 70
    .line 71
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 72
    .line 73
    if-eqz v4, :cond_e

    .line 74
    .line 75
    if-eqz v6, :cond_e

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v8, :cond_e

    .line 86
    .line 87
    iget-object v9, v8, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 88
    .line 89
    if-eqz v9, :cond_e

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const/4 v11, 0x2

    .line 96
    if-eqz v10, :cond_6

    .line 97
    .line 98
    iget v12, v10, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 99
    .line 100
    if-eq v12, v2, :cond_7

    .line 101
    .line 102
    if-eq v12, v11, :cond_7

    .line 103
    .line 104
    const/4 v13, 0x3

    .line 105
    if-eq v12, v13, :cond_7

    .line 106
    .line 107
    iget v12, v10, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 108
    .line 109
    iget-object v13, v10, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Ljava/lang/Integer;

    .line 116
    .line 117
    if-eqz v12, :cond_6

    .line 118
    .line 119
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-lez v13, :cond_4

    .line 124
    .line 125
    move v13, v2

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    move v13, v5

    .line 128
    :goto_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    iget-object v10, v10, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    add-int/lit8 v10, v10, -0x1

    .line 139
    .line 140
    if-ge v12, v10, :cond_5

    .line 141
    .line 142
    move/from16 v20, v2

    .line 143
    .line 144
    :goto_1
    move/from16 v21, v13

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    move/from16 v20, v5

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    move/from16 v20, v5

    .line 151
    .line 152
    :goto_2
    move/from16 v21, v20

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    move/from16 v20, v2

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-ne v6, v11, :cond_8

    .line 163
    .line 164
    move v15, v2

    .line 165
    goto :goto_4

    .line 166
    :cond_8
    move v15, v5

    .line 167
    :goto_4
    new-instance v14, Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 168
    .line 169
    iget v6, v8, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 170
    .line 171
    const-string v8, "com.google.android.gms.cast.metadata.TITLE"

    .line 172
    .line 173
    invoke-virtual {v9, v8}, Lcom/google/android/gms/cast/MediaMetadata;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v17

    .line 177
    iget-object v4, v4, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 180
    .line 181
    .line 182
    move-result-object v19

    .line 183
    move-object/from16 v18, v4

    .line 184
    .line 185
    move/from16 v16, v6

    .line 186
    .line 187
    invoke-direct/range {v14 .. v21}, Lcom/google/android/gms/cast/framework/media/internal/zzk;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    .line 188
    .line 189
    .line 190
    move-object/from16 v7, v17

    .line 191
    .line 192
    move-object/from16 v8, v18

    .line 193
    .line 194
    move/from16 v4, v20

    .line 195
    .line 196
    move/from16 v13, v21

    .line 197
    .line 198
    iget-object v10, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 199
    .line 200
    if-eqz v10, :cond_9

    .line 201
    .line 202
    iget-boolean v11, v10, Lcom/google/android/gms/cast/framework/media/internal/zzk;->b:Z

    .line 203
    .line 204
    if-ne v15, v11, :cond_9

    .line 205
    .line 206
    iget v11, v10, Lcom/google/android/gms/cast/framework/media/internal/zzk;->c:I

    .line 207
    .line 208
    if-ne v6, v11, :cond_9

    .line 209
    .line 210
    iget-object v6, v10, Lcom/google/android/gms/cast/framework/media/internal/zzk;->d:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v7, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_9

    .line 217
    .line 218
    iget-object v6, v10, Lcom/google/android/gms/cast/framework/media/internal/zzk;->e:Ljava/lang/String;

    .line 219
    .line 220
    invoke-static {v8, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_9

    .line 225
    .line 226
    iget-boolean v6, v10, Lcom/google/android/gms/cast/framework/media/internal/zzk;->f:Z

    .line 227
    .line 228
    if-ne v4, v6, :cond_9

    .line 229
    .line 230
    iget-boolean v4, v10, Lcom/google/android/gms/cast/framework/media/internal/zzk;->g:Z

    .line 231
    .line 232
    if-eq v13, v4, :cond_a

    .line 233
    .line 234
    :cond_9
    iput-object v14, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->m:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 235
    .line 236
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/internal/zzm;->a()V

    .line 237
    .line 238
    .line 239
    :cond_a
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->d:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 240
    .line 241
    new-instance v6, Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 242
    .line 243
    if-eqz v4, :cond_b

    .line 244
    .line 245
    iget-object v5, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->k:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 246
    .line 247
    invoke-virtual {v4, v9, v5}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->b(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    goto :goto_5

    .line 252
    :cond_b
    invoke-virtual {v9}, Lcom/google/android/gms/cast/MediaMetadata;->G()Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_c

    .line 257
    .line 258
    iget-object v4, v9, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    check-cast v4, Lcom/google/android/gms/common/images/WebImage;

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_c
    const/4 v4, 0x0

    .line 268
    :goto_5
    invoke-direct {v6, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzl;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 269
    .line 270
    .line 271
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->n:Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 272
    .line 273
    iget-object v5, v6, Lcom/google/android/gms/cast/framework/media/internal/zzl;->a:Landroid/net/Uri;

    .line 274
    .line 275
    if-eqz v4, :cond_d

    .line 276
    .line 277
    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/internal/zzl;->a:Landroid/net/Uri;

    .line 278
    .line 279
    invoke-static {v5, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_e

    .line 284
    .line 285
    :cond_d
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzm;->j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 286
    .line 287
    new-instance v7, Lcom/google/android/gms/cast/framework/media/internal/zzj;

    .line 288
    .line 289
    invoke-direct {v7, v3, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzj;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzm;Lcom/google/android/gms/cast/framework/media/internal/zzl;)V

    .line 290
    .line 291
    .line 292
    iput-object v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 293
    .line 294
    invoke-virtual {v4, v5}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a(Landroid/net/Uri;)V

    .line 295
    .line 296
    .line 297
    :cond_e
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->m()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_f

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->i(Z)V

    .line 304
    .line 305
    .line 306
    :cond_f
    :goto_7
    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gt v1, v2, :cond_2

    .line 20
    .line 21
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    if-nez v1, :cond_4

    .line 47
    .line 48
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :goto_1
    if-nez p2, :cond_5

    .line 61
    .line 62
    const-string p2, "android.media.metadata.DISPLAY_ICON"

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const-string p2, "android.media.metadata.ALBUM_ART"

    .line 66
    .line 67
    :goto_2
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final d(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_f

    .line 12
    .line 13
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 19
    .line 20
    invoke-direct {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 24
    .line 25
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 26
    .line 27
    if-eqz v6, :cond_e

    .line 28
    .line 29
    iget-object v12, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->j:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 30
    .line 31
    if-nez v12, :cond_1

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->F()I

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_2

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l()Z

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    if-eqz v12, :cond_3

    .line 46
    .line 47
    :cond_2
    const-wide/16 v12, 0x0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d()J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-virtual {v5, v1, v12, v13, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 57
    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_4
    if-eqz v7, :cond_5

    .line 68
    .line 69
    iget-object v6, v7, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:Lcom/google/android/gms/cast/framework/media/zzg;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/4 v6, 0x0

    .line 73
    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 74
    .line 75
    if-eqz v12, :cond_6

    .line 76
    .line 77
    invoke-virtual {v12}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l()Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-nez v12, :cond_6

    .line 82
    .line 83
    iget-object v12, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 84
    .line 85
    invoke-virtual {v12}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->p()Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v12, :cond_7

    .line 90
    .line 91
    :cond_6
    const-wide/16 v12, 0x0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_7
    const-wide/16 v12, 0x100

    .line 95
    .line 96
    :goto_2
    const-string v14, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 97
    .line 98
    const-string v15, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 99
    .line 100
    const-string v10, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 101
    .line 102
    if-eqz v6, :cond_a

    .line 103
    .line 104
    invoke-static {v6}, Lcom/google/android/gms/cast/framework/media/internal/zzt;->b(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eqz v6, :cond_d

    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v11, :cond_d

    .line 119
    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    check-cast v11, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 125
    .line 126
    iget-object v8, v11, Lcom/google/android/gms/cast/framework/media/NotificationAction;->c:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v16

    .line 132
    if-nez v16, :cond_9

    .line 133
    .line 134
    invoke-static {v8, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v16

    .line 138
    if-nez v16, :cond_9

    .line 139
    .line 140
    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v16

    .line 144
    if-eqz v16, :cond_8

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    invoke-virtual {v0, v5, v8, v11}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    :goto_4
    invoke-virtual {v0, v8, v1, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e(Ljava/lang/String;ILandroid/os/Bundle;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v16

    .line 155
    or-long v12, v12, v16

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_a
    if-eqz v7, :cond_d

    .line 159
    .line 160
    iget-object v6, v7, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    const/4 v11, 0x0

    .line 167
    :goto_5
    if-ge v11, v8, :cond_d

    .line 168
    .line 169
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v16

    .line 173
    add-int/lit8 v11, v11, 0x1

    .line 174
    .line 175
    move-object/from16 v9, v16

    .line 176
    .line 177
    check-cast v9, Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    if-nez v16, :cond_b

    .line 184
    .line 185
    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v16

    .line 189
    if-nez v16, :cond_b

    .line 190
    .line 191
    invoke-static {v9, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v16

    .line 195
    if-eqz v16, :cond_c

    .line 196
    .line 197
    :cond_b
    move-object/from16 v16, v6

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_c
    move-object/from16 v16, v6

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    invoke-virtual {v0, v5, v9, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :goto_6
    invoke-virtual {v0, v9, v1, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e(Ljava/lang/String;ILandroid/os/Bundle;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v18

    .line 211
    or-long v12, v12, v18

    .line 212
    .line 213
    :goto_7
    move-object/from16 v6, v16

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_d
    invoke-virtual {v5, v12, v13}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    goto :goto_9

    .line 225
    :cond_e
    :goto_8
    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    :goto_9
    invoke-virtual {v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 230
    .line 231
    .line 232
    const-string v5, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 233
    .line 234
    const/4 v6, 0x1

    .line 235
    if-eqz v7, :cond_f

    .line 236
    .line 237
    iget-boolean v8, v7, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->K:Z

    .line 238
    .line 239
    if-eqz v8, :cond_f

    .line 240
    .line 241
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    .line 243
    .line 244
    :cond_f
    const-string v8, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 245
    .line 246
    if-eqz v7, :cond_10

    .line 247
    .line 248
    iget-boolean v7, v7, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->L:Z

    .line 249
    .line 250
    if-eqz v7, :cond_10

    .line 251
    .line 252
    invoke-virtual {v4, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    :cond_10
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-nez v5, :cond_11

    .line 260
    .line 261
    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_12

    .line 266
    .line 267
    :cond_11
    invoke-virtual {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 268
    .line 269
    .line 270
    :cond_12
    if-eqz v1, :cond_1d

    .line 271
    .line 272
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 273
    .line 274
    if-eqz v1, :cond_14

    .line 275
    .line 276
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->f:Landroid/content/ComponentName;

    .line 277
    .line 278
    if-nez v1, :cond_13

    .line 279
    .line 280
    const/4 v6, 0x0

    .line 281
    goto :goto_a

    .line 282
    :cond_13
    new-instance v4, Landroid/content/Intent;

    .line 283
    .line 284
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 291
    .line 292
    const/high16 v5, 0xc000000

    .line 293
    .line 294
    const/4 v6, 0x0

    .line 295
    invoke-static {v1, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    move-object v6, v1

    .line 300
    :goto_a
    if-eqz v6, :cond_14

    .line 301
    .line 302
    invoke-virtual {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 303
    .line 304
    .line 305
    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 306
    .line 307
    if-eqz v1, :cond_1c

    .line 308
    .line 309
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 310
    .line 311
    if-eqz v3, :cond_1c

    .line 312
    .line 313
    if-eqz v2, :cond_1c

    .line 314
    .line 315
    iget-object v4, v2, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 316
    .line 317
    if-eqz v4, :cond_1c

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l()Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_15

    .line 324
    .line 325
    const-wide/16 v10, 0x0

    .line 326
    .line 327
    goto :goto_b

    .line 328
    :cond_15
    iget-wide v10, v2, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 329
    .line 330
    :goto_b
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 331
    .line 332
    invoke-virtual {v4, v1}, Lcom/google/android/gms/cast/MediaMetadata;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 337
    .line 338
    invoke-virtual {v4, v2}, Lcom/google/android/gms/cast/MediaMetadata;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 343
    .line 344
    if-nez v5, :cond_16

    .line 345
    .line 346
    const/4 v6, 0x0

    .line 347
    goto :goto_c

    .line 348
    :cond_16
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    :goto_c
    if-nez v6, :cond_17

    .line 357
    .line 358
    new-instance v5, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 359
    .line 360
    invoke-direct {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 361
    .line 362
    .line 363
    goto :goto_d

    .line 364
    :cond_17
    new-instance v5, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 365
    .line 366
    invoke-direct {v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 367
    .line 368
    .line 369
    :goto_d
    const-string v6, "android.media.metadata.DURATION"

    .line 370
    .line 371
    invoke-virtual {v5, v6, v10, v11}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    if-eqz v1, :cond_18

    .line 376
    .line 377
    const-string v6, "android.media.metadata.TITLE"

    .line 378
    .line 379
    invoke-virtual {v5, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 380
    .line 381
    .line 382
    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    .line 383
    .line 384
    invoke-virtual {v5, v6, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 385
    .line 386
    .line 387
    :cond_18
    if-eqz v2, :cond_19

    .line 388
    .line 389
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 390
    .line 391
    invoke-virtual {v5, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 392
    .line 393
    .line 394
    :cond_19
    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->g(Lcom/google/android/gms/cast/MediaMetadata;)Landroid/net/Uri;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-eqz v1, :cond_1a

    .line 406
    .line 407
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 408
    .line 409
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a(Landroid/net/Uri;)V

    .line 410
    .line 411
    .line 412
    const/4 v1, 0x0

    .line 413
    goto :goto_e

    .line 414
    :cond_1a
    const/4 v1, 0x0

    .line 415
    const/4 v6, 0x0

    .line 416
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->c(Landroid/graphics/Bitmap;I)V

    .line 417
    .line 418
    .line 419
    :goto_e
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->g(Lcom/google/android/gms/cast/MediaMetadata;)Landroid/net/Uri;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    if-eqz v2, :cond_1b

    .line 424
    .line 425
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 426
    .line 427
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a(Landroid/net/Uri;)V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :cond_1b
    const/4 v2, 0x3

    .line 432
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->c(Landroid/graphics/Bitmap;I)V

    .line 433
    .line 434
    .line 435
    :cond_1c
    :goto_f
    return-void

    .line 436
    :cond_1d
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 437
    .line 438
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 446
    .line 447
    .line 448
    return-void
.end method

.method public final e(Ljava/lang/String;ILandroid/os/Bundle;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x3855de4e

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    if-eq v0, v1, :cond_5

    .line 12
    .line 13
    const v1, -0x3854c70e

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const p3, 0xe0a3765

    .line 19
    .line 20
    .line 21
    if-eq v0, p3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string p3, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    const/4 p1, 0x3

    .line 33
    if-ne p2, p1, :cond_1

    .line 34
    .line 35
    const-wide/16 p2, 0x202

    .line 36
    .line 37
    move-wide v0, p2

    .line 38
    move p2, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide/16 v0, 0x200

    .line 41
    .line 42
    :goto_0
    const/4 p1, 0x2

    .line 43
    if-eq p2, p1, :cond_2

    .line 44
    .line 45
    return-wide v0

    .line 46
    :cond_2
    const-wide/16 p1, 0x204

    .line 47
    .line 48
    return-wide p1

    .line 49
    :cond_3
    const-string p2, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_7

    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->G()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const-wide/16 p1, 0x10

    .line 68
    .line 69
    return-wide p1

    .line 70
    :cond_4
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 71
    .line 72
    invoke-virtual {p3, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    return-wide v3

    .line 76
    :cond_5
    const-string p2, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->H()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    const-wide/16 p1, 0x20

    .line 95
    .line 96
    return-wide p1

    .line 97
    :cond_6
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 98
    .line 99
    invoke-virtual {p3, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_1
    return-wide v3
.end method

.method public final f(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x2710

    .line 6
    .line 7
    const-wide/16 v3, 0x7530

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 12
    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :sswitch_0
    const-string v0, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_c

    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 27
    .line 28
    if-nez p2, :cond_4

    .line 29
    .line 30
    if-eqz v6, :cond_4

    .line 31
    .line 32
    iget-wide p2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    .line 33
    .line 34
    sget-object v7, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 35
    .line 36
    cmp-long v1, p2, v1

    .line 37
    .line 38
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    cmp-long v7, p2, v3

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 51
    .line 52
    :goto_0
    iget v7, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->o:I

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget v7, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->p:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    cmp-long p2, p2, v3

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget v7, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 65
    .line 66
    :goto_1
    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-direct {p2, v0, p3, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 84
    .line 85
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :sswitch_1
    const-string v0, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_c

    .line 96
    .line 97
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 98
    .line 99
    if-nez p2, :cond_5

    .line 100
    .line 101
    if-eqz v6, :cond_5

    .line 102
    .line 103
    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    iget v1, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 110
    .line 111
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    iget v1, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    .line 116
    .line 117
    invoke-direct {p2, v0, p3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 125
    .line 126
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :sswitch_2
    const-string v0, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 131
    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_c

    .line 137
    .line 138
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 139
    .line 140
    if-nez p2, :cond_6

    .line 141
    .line 142
    if-eqz v6, :cond_6

    .line 143
    .line 144
    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 145
    .line 146
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    iget v1, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 151
    .line 152
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    iget v1, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    .line 157
    .line 158
    invoke-direct {p2, v0, p3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 166
    .line 167
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :sswitch_3
    const-string v0, "com.google.android.gms.cast.framework.action.REWIND"

    .line 171
    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_c

    .line 177
    .line 178
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 179
    .line 180
    if-nez p2, :cond_b

    .line 181
    .line 182
    if-eqz v6, :cond_b

    .line 183
    .line 184
    iget-wide p2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    .line 185
    .line 186
    sget-object v7, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 187
    .line 188
    cmp-long v1, p2, v1

    .line 189
    .line 190
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    .line 191
    .line 192
    if-nez v1, :cond_7

    .line 193
    .line 194
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    cmp-long v7, p2, v3

    .line 198
    .line 199
    if-eqz v7, :cond_8

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    iget v2, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    .line 203
    .line 204
    :goto_2
    iget v7, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->r:I

    .line 205
    .line 206
    if-nez v1, :cond_9

    .line 207
    .line 208
    iget v7, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->s:I

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_9
    cmp-long p2, p2, v3

    .line 212
    .line 213
    if-eqz p2, :cond_a

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_a
    iget v7, v6, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->t:I

    .line 217
    .line 218
    :goto_3
    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 219
    .line 220
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    invoke-direct {p2, v0, p3, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 236
    .line 237
    :cond_b
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_c
    :goto_4
    if-eqz p3, :cond_d

    .line 241
    .line 242
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 243
    .line 244
    iget-object v1, p3, Lcom/google/android/gms/cast/framework/media/NotificationAction;->g:Ljava/lang/String;

    .line 245
    .line 246
    iget p3, p3, Lcom/google/android/gms/cast/framework/media/NotificationAction;->f:I

    .line 247
    .line 248
    invoke-direct {v0, p2, v1, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    goto :goto_5

    .line 256
    :cond_d
    const/4 p2, 0x0

    .line 257
    :goto_5
    if-eqz p2, :cond_e

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 260
    .line 261
    .line 262
    :cond_e
    return-void

    .line 263
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Lcom/google/android/gms/cast/MediaMetadata;)Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->F()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->a(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/common/images/WebImage;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->G()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object p1, v1

    .line 38
    :goto_1
    if-nez p1, :cond_3

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->j:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    const-string v3, "Stopping media notification."

    .line 11
    .line 12
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, v1, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b:Landroid/app/NotificationManager;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v1, "castMediaNotification"

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->k:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->k:Lcom/google/android/gms/internal/cast/zzfk;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->l:Ljava/lang/Runnable;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 20
    .line 21
    const-class v4, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->k:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->k:Lcom/google/android/gms/internal/cast/zzfk;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->l:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 18
    .line 19
    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
