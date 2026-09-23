.class public final Lcom/google/android/gms/internal/cast/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v0, v1, v2

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 16
    .line 17
    const-string v2, "onSessionSuspended with reason = %d"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 23
    .line 24
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->e()V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 39
    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/cast/zzp;->a(Lcom/google/android/gms/internal/cast/zzo;I)Lcom/google/android/gms/internal/cast/zzqr;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/16 p2, 0xe1

    .line 45
    .line 46
    invoke-virtual {v2, p2, p1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->a()V

    .line 50
    .line 51
    .line 52
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->e:Lcom/google/android/gms/internal/cast/zzfk;

    .line 53
    .line 54
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/zzn;->d:Ljava/lang/Runnable;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final e(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p2, v1, v2

    .line 8
    .line 9
    sget-object v3, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const-string v4, "onSessionResuming with sessionId = %s"

    .line 12
    .line 13
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 17
    .line 18
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 19
    .line 20
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->f:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/cast/zzn;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    new-array p1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string p2, "Use the existing ApplicationAnalyticsSession if it is available and valid."

    .line 31
    .line 32
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/cast/zzn;->b:Lcom/google/android/gms/internal/cast/zzax;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    sget-object p1, Lcom/google/android/gms/internal/cast/zzo;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/cast/zzo;

    .line 51
    .line 52
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/cast/zzo;-><init>(Lcom/google/android/gms/internal/cast/zzax;)V

    .line 53
    .line 54
    .line 55
    const-string v6, "is_output_switcher_enabled"

    .line 56
    .line 57
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iput-boolean v6, v5, Lcom/google/android/gms/internal/cast/zzo;->o:Z

    .line 62
    .line 63
    const-string v6, "application_id"

    .line 64
    .line 65
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    const-string v7, ""

    .line 72
    .line 73
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 78
    .line 79
    const-string v6, "receiver_metrics_id"

    .line 80
    .line 81
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->c:Ljava/lang/String;

    .line 92
    .line 93
    const-string v6, "analytics_session_id"

    .line 94
    .line 95
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    const-wide/16 v8, 0x0

    .line 102
    .line 103
    invoke-interface {p1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    iput-wide v8, v5, Lcom/google/android/gms/internal/cast/zzo;->d:J

    .line 108
    .line 109
    const-string v6, "event_sequence_number"

    .line 110
    .line 111
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_2

    .line 116
    .line 117
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iput v6, v5, Lcom/google/android/gms/internal/cast/zzo;->e:I

    .line 122
    .line 123
    const-string v6, "receiver_session_id"

    .line 124
    .line 125
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_2

    .line 130
    .line 131
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->f:Ljava/lang/String;

    .line 136
    .line 137
    const-string v6, "device_capabilities"

    .line 138
    .line 139
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    iput v6, v5, Lcom/google/android/gms/internal/cast/zzo;->g:I

    .line 144
    .line 145
    const-string v6, "device_model_name"

    .line 146
    .line 147
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    .line 152
    .line 153
    const-string v6, "manufacturer"

    .line 154
    .line 155
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->i:Ljava/lang/String;

    .line 160
    .line 161
    const-string v6, "product_name"

    .line 162
    .line 163
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->j:Ljava/lang/String;

    .line 168
    .line 169
    const-string v6, "build_type"

    .line 170
    .line 171
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->k:Ljava/lang/String;

    .line 176
    .line 177
    const-string v6, "cast_build_version"

    .line 178
    .line 179
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->l:Ljava/lang/String;

    .line 184
    .line 185
    const-string v6, "system_build_number"

    .line 186
    .line 187
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/zzo;->m:Ljava/lang/String;

    .line 192
    .line 193
    const-string v6, "device_category"

    .line 194
    .line 195
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    iput v6, v5, Lcom/google/android/gms/internal/cast/zzo;->n:I

    .line 200
    .line 201
    const-string v6, "analytics_session_start_type"

    .line 202
    .line 203
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iput p1, v5, Lcom/google/android/gms/internal/cast/zzo;->p:I

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 211
    :goto_1
    iput-object v5, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 212
    .line 213
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/cast/zzn;->h(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    const-wide/16 v5, 0x1

    .line 218
    .line 219
    if-eqz p1, :cond_3

    .line 220
    .line 221
    new-array p1, v2, [Ljava/lang/Object;

    .line 222
    .line 223
    const-string p2, "Use the restored ApplicationAnalyticsSession if it is valid."

    .line 224
    .line 225
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 229
    .line 230
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 234
    .line 235
    iget-wide p1, p1, Lcom/google/android/gms/internal/cast/zzo;->d:J

    .line 236
    .line 237
    add-long/2addr p1, v5

    .line 238
    sput-wide p1, Lcom/google/android/gms/internal/cast/zzo;->r:J

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 242
    .line 243
    const-string v7, "The restored ApplicationAnalyticsSession is not valid, create a new one."

    .line 244
    .line 245
    invoke-virtual {v3, v7, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Lcom/google/android/gms/internal/cast/zzo;

    .line 249
    .line 250
    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/cast/zzo;-><init>(Lcom/google/android/gms/internal/cast/zzax;)V

    .line 251
    .line 252
    .line 253
    sget-wide v3, Lcom/google/android/gms/internal/cast/zzo;->r:J

    .line 254
    .line 255
    add-long/2addr v3, v5

    .line 256
    sput-wide v3, Lcom/google/android/gms/internal/cast/zzo;->r:J

    .line 257
    .line 258
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 259
    .line 260
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Lcom/google/android/gms/internal/cast/zzo;

    .line 265
    .line 266
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 267
    .line 268
    if-eqz v3, :cond_4

    .line 269
    .line 270
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/CastSession;->g:Lcom/google/android/gms/internal/cast/zzbx;

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zzbx;->zzo()Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_4

    .line 277
    .line 278
    move v2, v0

    .line 279
    :cond_4
    iput-boolean v2, p1, Lcom/google/android/gms/internal/cast/zzo;->o:Z

    .line 280
    .line 281
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 282
    .line 283
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    check-cast p1, Lcom/google/android/gms/internal/cast/zzo;

    .line 288
    .line 289
    sget-object v2, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 290
    .line 291
    const-string v2, "Must be called from the main thread."

    .line 292
    .line 293
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 297
    .line 298
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lcom/google/android/gms/cast/framework/CastContext;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v2, v3, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 311
    .line 312
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 313
    .line 314
    iput-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 315
    .line 316
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 317
    .line 318
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Lcom/google/android/gms/internal/cast/zzo;

    .line 323
    .line 324
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzo;->f:Ljava/lang/String;

    .line 325
    .line 326
    :goto_2
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 327
    .line 328
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 332
    .line 333
    iget-object p2, v1, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 334
    .line 335
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 336
    .line 337
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzp;->b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzqq;->f()Lcom/google/android/gms/internal/cast/zzqg;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzqg;->o(Lcom/google/android/gms/internal/cast/zzqg;)Lcom/google/android/gms/internal/cast/zzqf;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 350
    .line 351
    .line 352
    iget-object v2, p2, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 353
    .line 354
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 355
    .line 356
    const/16 v3, 0xa

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/zzqg;->t(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 366
    .line 367
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzqq;->g(Lcom/google/android/gms/internal/cast/zzqg;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzqq;->f()Lcom/google/android/gms/internal/cast/zzqg;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzqg;->o(Lcom/google/android/gms/internal/cast/zzqg;)Lcom/google/android/gms/internal/cast/zzqf;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 379
    .line 380
    .line 381
    iget-object v2, p2, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 382
    .line 383
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 384
    .line 385
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zzqg;->r(Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 389
    .line 390
    .line 391
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 392
    .line 393
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqr;

    .line 394
    .line 395
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    check-cast p2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 400
    .line 401
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzqr;->x(Lcom/google/android/gms/internal/cast/zzqg;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 409
    .line 410
    const/16 p2, 0xe2

    .line 411
    .line 412
    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 413
    .line 414
    .line 415
    return-void
.end method

.method public final synthetic f(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzn;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final h(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object p2, v0, v1

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const-string v2, "onSessionStarted with sessionId = %s"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 17
    .line 18
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->e()V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 24
    .line 25
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzo;->f:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzp;->b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 40
    .line 41
    const/16 p2, 0xde

    .line 42
    .line 43
    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->a()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->c()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final synthetic j(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzn;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final k(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v0, v1, v2

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 16
    .line 17
    const-string v2, "onSessionResumed with wasSuspended = %b"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 23
    .line 24
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->e()V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zzp;->b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzqq;->f()Lcom/google/android/gms/internal/cast/zzqg;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzqg;->o(Lcom/google/android/gms/internal/cast/zzqg;)Lcom/google/android/gms/internal/cast/zzqf;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 56
    .line 57
    check-cast v3, Lcom/google/android/gms/internal/cast/zzqg;

    .line 58
    .line 59
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/cast/zzqg;->r(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 63
    .line 64
    .line 65
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 66
    .line 67
    check-cast p2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/google/android/gms/internal/cast/zzqg;

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->x(Lcom/google/android/gms/internal/cast/zzqg;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 83
    .line 84
    const/16 p2, 0xe3

    .line 85
    .line 86
    invoke-virtual {v2, p2, p1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->a()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzn;->c()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final synthetic m(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cast/zzn;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final n(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzn;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "onSessionStarting"

    .line 9
    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 14
    .line 15
    iput-object p1, v2, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 16
    .line 17
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-array p1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "Start a session while there\'s already an active session. Create a new one."

    .line 26
    .line 27
    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzn;->d()V

    .line 35
    .line 36
    .line 37
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/zzn;->g:Lcom/google/android/gms/internal/cast/zzo;

    .line 38
    .line 39
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzn;->c:Lcom/google/android/gms/internal/cast/zzp;

    .line 40
    .line 41
    iget-object v1, v2, Lcom/google/android/gms/internal/cast/zzn;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzp;->b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget p1, p1, Lcom/google/android/gms/internal/cast/zzo;->p:I

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-ne p1, v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzqq;->f()Lcom/google/android/gms/internal/cast/zzqg;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzqg;->o(Lcom/google/android/gms/internal/cast/zzqg;)Lcom/google/android/gms/internal/cast/zzqf;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 64
    .line 65
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 66
    .line 67
    const/16 v3, 0x11

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/zzqg;->t(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqg;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzqq;->g(Lcom/google/android/gms/internal/cast/zzqg;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 86
    .line 87
    const/16 v0, 0xdd

    .line 88
    .line 89
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final synthetic o(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzl;->a:Lcom/google/android/gms/internal/cast/zzn;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzn;->h:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    return-void
.end method
