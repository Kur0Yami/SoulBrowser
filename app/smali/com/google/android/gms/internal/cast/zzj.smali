.class public final Lcom/google/android/gms/internal/cast/zzj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static final l:Lcom/google/android/gms/cast/internal/Logger;

.field public static m:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/internal/zzn;

.field public final c:Lcom/google/android/gms/cast/framework/SessionManager;

.field public final d:Lcom/google/android/gms/internal/cast/zzce;

.field public final e:Lcom/google/android/gms/internal/cast/zzax;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/Long;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public i:Lcom/google/android/datatransport/Transport;

.field public j:Lcom/google/android/gms/internal/cast/zzcn;

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "ClientCastAnalytics"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzj;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzj;->m:Z

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzce;Lcom/google/android/gms/internal/cast/zzax;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzj;->b:Lcom/google/android/gms/cast/internal/zzn;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzj;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzj;->d:Lcom/google/android/gms/internal/cast/zzce;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzj;->e:Lcom/google/android/gms/internal/cast/zzax;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzj;->k:I

    .line 16
    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->h:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, v4

    .line 41
    :goto_0
    const-string v5, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 42
    .line 43
    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const-string v6, "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED"

    .line 48
    .line 49
    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sput-boolean v6, Lcom/google/android/gms/internal/cast/zzj;->m:Z

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    if-nez v5, :cond_2

    .line 58
    .line 59
    if-eqz v6, :cond_11

    .line 60
    .line 61
    :cond_2
    move v2, v4

    .line 62
    :cond_3
    const-string v6, "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"

    .line 63
    .line 64
    const-wide/16 v7, 0x5

    .line 65
    .line 66
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    iget-object v8, v1, Lcom/google/android/gms/internal/cast/zzj;->a:Landroid/content/Context;

    .line 71
    .line 72
    new-instance v9, Lcom/google/android/gms/internal/cast/zzcn;

    .line 73
    .line 74
    invoke-direct {v9, v8, v6, v7}, Lcom/google/android/gms/internal/cast/zzcn;-><init>(Landroid/content/Context;J)V

    .line 75
    .line 76
    .line 77
    iput-object v9, v1, Lcom/google/android/gms/internal/cast/zzj;->j:Lcom/google/android/gms/internal/cast/zzcn;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 84
    .line 85
    const-string v7, ".client_cast_analytics_data"

    .line 86
    .line 87
    invoke-static {v6, v7}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v9, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 92
    .line 93
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    const-wide/16 v11, 0x0

    .line 98
    .line 99
    cmp-long v9, v9, v11

    .line 100
    .line 101
    if-nez v9, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v3, 0x2

    .line 105
    :goto_1
    iput v3, v1, Lcom/google/android/gms/internal/cast/zzj;->k:I

    .line 106
    .line 107
    invoke-static {v8}, Lcom/google/android/datatransport/runtime/TransportRuntime;->b(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->a()Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v9, Lcom/google/android/datatransport/cct/CCTDestination;->e:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 115
    .line 116
    invoke-virtual {v3, v9}, Lcom/google/android/datatransport/runtime/TransportRuntime;->c(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v9, "proto"

    .line 121
    .line 122
    const-string v10, "CAST_SENDER_SDK"

    .line 123
    .line 124
    new-instance v13, Lcom/google/android/datatransport/Encoding;

    .line 125
    .line 126
    invoke-direct {v13, v9}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object v9, Lcom/google/android/gms/internal/cast/zzf;->a:Lcom/google/android/gms/internal/cast/zzf;

    .line 130
    .line 131
    invoke-interface {v3, v10, v13, v9}, Lcom/google/android/datatransport/TransportFactory;->a(Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iput-object v3, v1, Lcom/google/android/gms/internal/cast/zzj;->i:Lcom/google/android/datatransport/Transport;

    .line 136
    .line 137
    const-string v3, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_5

    .line 144
    .line 145
    const-string v3, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v9

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, v1, Lcom/google/android/gms/internal/cast/zzj;->g:Ljava/lang/Long;

    .line 156
    .line 157
    :cond_5
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzj;->b:Lcom/google/android/gms/cast/internal/zzn;

    .line 168
    .line 169
    const-string v4, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 170
    .line 171
    const-string v7, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 172
    .line 173
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/internal/zzn;->h([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    new-instance v4, Lcom/google/android/gms/internal/cast/zzi;

    .line 182
    .line 183
    invoke-direct {v4, v1, v6, v2, v0}, Lcom/google/android/gms/internal/cast/zzi;-><init>(Lcom/google/android/gms/internal/cast/zzj;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 187
    .line 188
    .line 189
    :cond_6
    if-eqz v5, :cond_10

    .line 190
    .line 191
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    sget-object v2, Lcom/google/android/gms/internal/cast/zzr;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 195
    .line 196
    const-class v2, Lcom/google/android/gms/internal/cast/zzr;

    .line 197
    .line 198
    monitor-enter v2

    .line 199
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/cast/zzr;->l:Lcom/google/android/gms/internal/cast/zzr;

    .line 200
    .line 201
    if-nez v3, :cond_7

    .line 202
    .line 203
    new-instance v3, Lcom/google/android/gms/internal/cast/zzr;

    .line 204
    .line 205
    invoke-direct {v3, v0, v1, v6}, Lcom/google/android/gms/internal/cast/zzr;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzj;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sput-object v3, Lcom/google/android/gms/internal/cast/zzr;->l:Lcom/google/android/gms/internal/cast/zzr;

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :cond_7
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/cast/zzr;->l:Lcom/google/android/gms/internal/cast/zzr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .line 216
    monitor-exit v2

    .line 217
    const-string v2, "feature_usage_timestamp_"

    .line 218
    .line 219
    const-string v3, "feature_usage_last_report_time"

    .line 220
    .line 221
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/zzr;->c:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzr;->b:Landroid/content/SharedPreferences;

    .line 224
    .line 225
    const-string v6, "feature_usage_package_name"

    .line 226
    .line 227
    const-string v7, "feature_usage_sdk_version"

    .line 228
    .line 229
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/zzr;->f:Ljava/util/HashSet;

    .line 230
    .line 231
    const/4 v9, 0x0

    .line 232
    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 241
    .line 242
    .line 243
    iget-object v13, v0, Lcom/google/android/gms/internal/cast/zzr;->g:Ljava/util/HashSet;

    .line 244
    .line 245
    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 246
    .line 247
    .line 248
    iput-wide v11, v0, Lcom/google/android/gms/internal/cast/zzr;->i:J

    .line 249
    .line 250
    sget-object v14, Lcom/google/android/gms/internal/cast/zzr;->k:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_d

    .line 257
    .line 258
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-nez v9, :cond_8

    .line 263
    .line 264
    goto/16 :goto_4

    .line 265
    .line 266
    :cond_8
    invoke-interface {v5, v3, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v3

    .line 270
    iput-wide v3, v0, Lcom/google/android/gms/internal/cast/zzr;->i:J

    .line 271
    .line 272
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzr;->h:Lcom/google/android/gms/common/util/Clock;

    .line 273
    .line 274
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Lcom/google/android/gms/common/util/Clock;

    .line 279
    .line 280
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 281
    .line 282
    .line 283
    move-result-wide v3

    .line 284
    new-instance v6, Ljava/util/HashSet;

    .line 285
    .line 286
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-eqz v9, :cond_c

    .line 306
    .line 307
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    check-cast v9, Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-eqz v10, :cond_9

    .line 318
    .line 319
    invoke-interface {v5, v9, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 320
    .line 321
    .line 322
    move-result-wide v14

    .line 323
    cmp-long v10, v14, v11

    .line 324
    .line 325
    if-eqz v10, :cond_a

    .line 326
    .line 327
    sub-long v14, v3, v14

    .line 328
    .line 329
    const-wide/32 v16, 0x48190800

    .line 330
    .line 331
    .line 332
    cmp-long v10, v14, v16

    .line 333
    .line 334
    if-lez v10, :cond_a

    .line 335
    .line 336
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_a
    const-string v10, "feature_usage_timestamp_reported_feature_"

    .line 341
    .line 342
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    const/16 v14, 0x29

    .line 347
    .line 348
    if-eqz v10, :cond_b

    .line 349
    .line 350
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zzr;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzpm;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    if-eqz v9, :cond_9

    .line 359
    .line 360
    invoke-virtual {v13, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_b
    const-string v10, "feature_usage_timestamp_detected_feature_"

    .line 368
    .line 369
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v10

    .line 373
    if-eqz v10, :cond_9

    .line 374
    .line 375
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/zzr;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzpm;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    if-eqz v9, :cond_9

    .line 384
    .line 385
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_c
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/cast/zzr;->b(Ljava/util/HashSet;)V

    .line 390
    .line 391
    .line 392
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzr;->e:Lcom/google/android/gms/internal/cast/zzfk;

    .line 393
    .line 394
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzr;->d:Ljava/lang/Runnable;

    .line 398
    .line 399
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzr;->e:Lcom/google/android/gms/internal/cast/zzfk;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzr;->d:Ljava/lang/Runnable;

    .line 405
    .line 406
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_d
    :goto_4
    new-instance v8, Ljava/util/HashSet;

    .line 411
    .line 412
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    :cond_e
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v10

    .line 431
    if-eqz v10, :cond_f

    .line 432
    .line 433
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    check-cast v10, Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 440
    .line 441
    .line 442
    move-result v11

    .line 443
    if-eqz v11, :cond_e

    .line 444
    .line 445
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_f
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/cast/zzr;->b(Ljava/util/HashSet;)V

    .line 453
    .line 454
    .line 455
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    .line 469
    .line 470
    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/cast/zzpm;->k:Lcom/google/android/gms/internal/cast/zzpm;

    .line 471
    .line 472
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 473
    .line 474
    .line 475
    goto :goto_8

    .line 476
    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    throw v0

    .line 478
    :cond_10
    :goto_8
    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzj;->m:Z

    .line 479
    .line 480
    if-eqz v0, :cond_11

    .line 481
    .line 482
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzu;->a()V

    .line 483
    .line 484
    .line 485
    :cond_11
    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/cast/zzqr;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzg;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/cast/zzg;-><init>(Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzqr;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->h:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
