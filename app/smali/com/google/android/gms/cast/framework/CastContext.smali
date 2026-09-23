.class public Lcom/google/android/gms/cast/framework/CastContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lcom/google/android/gms/cast/internal/Logger;

.field public static final m:Ljava/lang/Object;

.field public static volatile n:Lcom/google/android/gms/cast/framework/CastContext;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/zzah;

.field public final c:Lcom/google/android/gms/cast/framework/SessionManager;

.field public final d:Lcom/google/android/gms/cast/framework/zzaa;

.field public final e:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final f:Lcom/google/android/gms/cast/internal/zzn;

.field public final g:Lcom/google/android/gms/internal/cast/zzax;

.field public final h:Lcom/google/android/gms/internal/cast/zzbq;

.field public final i:Ljava/util/List;

.field public final j:Lcom/google/android/gms/internal/cast/zzce;

.field public final k:Lcom/google/android/gms/internal/cast/zzba;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "CastContext"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->m:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/cast/framework/CastContext;->f:Lcom/google/android/gms/cast/internal/zzn;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->i:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbq;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzbq;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->h:Lcom/google/android/gms/internal/cast/zzbq;

    .line 18
    .line 19
    iget-object v0, p4, Lcom/google/android/gms/internal/cast/zzbx;->h:Lcom/google/android/gms/internal/cast/zzce;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->j:Lcom/google/android/gms/internal/cast/zzce;

    .line 22
    .line 23
    iget-object v0, p2, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/cast/zzba;

    .line 33
    .line 34
    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/internal/cast/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbx;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->k:Lcom/google/android/gms/internal/cast/zzba;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->k:Lcom/google/android/gms/internal/cast/zzba;

    .line 41
    .line 42
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->k:Lcom/google/android/gms/internal/cast/zzba;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v3, v2, Lcom/google/android/gms/cast/framework/SessionProvider;->b:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/SessionProvider;->c:Lcom/google/android/gms/cast/framework/zzbh;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    const/4 v2, 0x1

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/google/android/gms/cast/framework/SessionProvider;

    .line 76
    .line 77
    const-string v4, "Additional SessionProvider must not be null."

    .line 78
    .line 79
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/SessionProvider;->b:Ljava/lang/String;

    .line 83
    .line 84
    const-string v5, "Category for SessionProvider must not be null or empty string."

    .line 85
    .line 86
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    xor-int/2addr v5, v2

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v7, "SessionProvider for category "

    .line 98
    .line 99
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v7, " already added"

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/SessionProvider;->c:Lcom/google/android/gms/cast/framework/zzbh;

    .line 118
    .line 119
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance p3, Lcom/google/android/gms/cast/framework/zzl;

    .line 124
    .line 125
    invoke-direct {p3, v2}, Lcom/google/android/gms/cast/framework/zzl;-><init>(I)V

    .line 126
    .line 127
    .line 128
    iput-object p3, p2, Lcom/google/android/gms/cast/framework/CastOptions;->t:Lcom/google/android/gms/cast/framework/zzl;

    .line 129
    .line 130
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzay;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzbc;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    new-instance v3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 139
    .line 140
    invoke-direct {v3, v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p3, v3, p2, p4, v0}, Lcom/google/android/gms/internal/cast/zzbc;->u3(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbx;Ljava/util/HashMap;)Lcom/google/android/gms/cast/framework/zzah;

    .line 144
    .line 145
    .line 146
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 147
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->b:Lcom/google/android/gms/cast/framework/zzah;

    .line 148
    .line 149
    :try_start_1
    invoke-interface {p3}, Lcom/google/android/gms/cast/framework/zzah;->zzh()Lcom/google/android/gms/cast/framework/zzao;

    .line 150
    .line 151
    .line 152
    move-result-object p4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 153
    new-instance v0, Lcom/google/android/gms/cast/framework/zzaa;

    .line 154
    .line 155
    invoke-direct {v0, p4}, Lcom/google/android/gms/cast/framework/zzaa;-><init>(Lcom/google/android/gms/cast/framework/zzao;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->d:Lcom/google/android/gms/cast/framework/zzaa;

    .line 159
    .line 160
    :try_start_2
    invoke-interface {p3}, Lcom/google/android/gms/cast/framework/zzah;->zzg()Lcom/google/android/gms/cast/framework/zzaw;

    .line 161
    .line 162
    .line 163
    move-result-object p4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    new-instance v0, Lcom/google/android/gms/cast/framework/SessionManager;

    .line 165
    .line 166
    invoke-direct {v0, p4, p1}, Lcom/google/android/gms/cast/framework/SessionManager;-><init>(Lcom/google/android/gms/cast/framework/zzaw;Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 170
    .line 171
    new-instance p4, Lcom/google/android/gms/cast/internal/Logger;

    .line 172
    .line 173
    const-string v2, "PrecacheManager"

    .line 174
    .line 175
    invoke-direct {p4, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p4, p0, Lcom/google/android/gms/cast/framework/CastContext;->j:Lcom/google/android/gms/internal/cast/zzce;

    .line 179
    .line 180
    if-eqz p4, :cond_3

    .line 181
    .line 182
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/cast/zzce;->a(Lcom/google/android/gms/cast/framework/SessionManager;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/cast/zzek;

    .line 186
    .line 187
    const/4 v0, 0x3

    .line 188
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwt;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/cast/zzwo;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {p4, p1, v0}, Lcom/google/android/gms/internal/cast/zzek;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/zzwo;)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    .line 200
    .line 201
    const-string v0, "BaseNetUtils"

    .line 202
    .line 203
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4}, Lcom/google/android/gms/internal/cast/zzek;->a()V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lcom/google/android/gms/internal/cast/zzax;

    .line 210
    .line 211
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzax;-><init>()V

    .line 212
    .line 213
    .line 214
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->g:Lcom/google/android/gms/internal/cast/zzax;

    .line 215
    .line 216
    :try_start_3
    invoke-interface {p3, p1}, Lcom/google/android/gms/cast/framework/zzah;->g4(Lcom/google/android/gms/internal/cast/zzax;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 217
    .line 218
    .line 219
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->h:Lcom/google/android/gms/internal/cast/zzbq;

    .line 220
    .line 221
    iget-object p3, p3, Lcom/google/android/gms/internal/cast/zzbq;->a:Lcom/google/android/gms/internal/cast/zzbn;

    .line 222
    .line 223
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzax;->c:Ljava/util/Set;

    .line 224
    .line 225
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    iget-object p1, p2, Lcom/google/android/gms/cast/framework/CastOptions;->p:Ljava/util/List;

    .line 229
    .line 230
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_4

    .line 239
    .line 240
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 241
    .line 242
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/CastOptions;->p:Ljava/util/List;

    .line 243
    .line 244
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    const/4 p2, 0x0

    .line 253
    new-array p2, p2, [Ljava/lang/Object;

    .line 254
    .line 255
    const-string p3, "Setting Route Discovery for appIds: "

    .line 256
    .line 257
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget-object p3, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 262
    .line 263
    iget-object p4, p3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->h:Lcom/google/android/gms/internal/cast/zzbq;

    .line 273
    .line 274
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 275
    .line 276
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/CastOptions;->p:Ljava/util/List;

    .line 277
    .line 278
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzbq;->r(Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    :cond_4
    const-string v5, "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED"

    .line 286
    .line 287
    const-string v6, "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"

    .line 288
    .line 289
    const-string v0, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 290
    .line 291
    const-string v1, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 292
    .line 293
    const-string v2, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 294
    .line 295
    const-string v3, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 296
    .line 297
    const-string v4, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 298
    .line 299
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p5, p1}, Lcom/google/android/gms/cast/internal/zzn;->g([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    new-instance p2, Lcom/google/android/gms/cast/framework/zzg;

    .line 308
    .line 309
    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/zzg;-><init>(Lcom/google/android/gms/cast/framework/CastContext;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 313
    .line 314
    .line 315
    const-string p1, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    .line 316
    .line 317
    filled-new-array {p1}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p5, p1}, Lcom/google/android/gms/cast/internal/zzn;->i([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    new-instance p2, Lcom/google/android/gms/cast/framework/zzh;

    .line 326
    .line 327
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    move-object p1, v0

    .line 336
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 337
    .line 338
    const-string p3, "Failed to call addAppVisibilityListener"

    .line 339
    .line 340
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    throw p2

    .line 344
    :catch_1
    move-exception v0

    .line 345
    move-object p1, v0

    .line 346
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 347
    .line 348
    const-string p3, "Failed to call getSessionManagerImpl"

    .line 349
    .line 350
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    throw p2

    .line 354
    :catch_2
    move-exception v0

    .line 355
    move-object p1, v0

    .line 356
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 357
    .line 358
    const-string p3, "Failed to call getDiscoveryManagerImpl"

    .line 359
    .line 360
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    .line 362
    .line 363
    throw p2

    .line 364
    :catch_3
    move-exception v0

    .line 365
    move-object p1, v0

    .line 366
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 367
    .line 368
    const-string p3, "Failed to call newCastContextImpl"

    .line 369
    .line 370
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    throw p2
.end method

.method public static e(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 8

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->m:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/cast/framework/CastContext;->i(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v7, Lcom/google/android/gms/cast/internal/zzn;

    .line 30
    .line 31
    invoke-direct {v7, v3}, Lcom/google/android/gms/cast/internal/zzn;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lcom/google/android/gms/internal/cast/zzbx;

    .line 35
    .line 36
    invoke-static {v3}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v6, v3, v0, v4, v7}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/internal/zzn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_1
    new-instance v2, Lcom/google/android/gms/cast/framework/CastContext;

    .line 44
    .line 45
    invoke-interface {p0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/cast/framework/CastContext;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/cast/internal/zzn;)V

    .line 50
    .line 51
    .line 52
    sput-object v2, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;
    :try_end_1
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object p0, v0

    .line 60
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_0
    :goto_0
    monitor-exit v1

    .line 67
    goto :goto_2

    .line 68
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 71
    .line 72
    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/tasks/Task;
    .locals 7

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/cast/framework/CastContext;->i(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v4, v2}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v6, Lcom/google/android/gms/cast/internal/zzn;

    .line 23
    .line 24
    invoke-direct {v6, v2}, Lcom/google/android/gms/cast/internal/zzn;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/google/android/gms/internal/cast/zzbx;

    .line 28
    .line 29
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v5, v2, p0, v3, v6}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/internal/zzn;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/cast/framework/zzi;

    .line 37
    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/cast/framework/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/OptionsProvider;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/cast/internal/zzn;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/google/android/gms/tasks/Tasks;->b(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    sget-object p0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static h(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 3

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->e(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput-object p0, v0, v1

    .line 17
    .line 18
    sget-object p0, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently."

    .line 23
    .line 24
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static i(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v1, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->c([Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-class v0, Lcom/google/android/gms/cast/framework/OptionsProvider;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/google/android/gms/cast/framework/OptionsProvider;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "Failed to initialize CastContext."

    .line 69
    .line 70
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/SessionManager;->a:Lcom/google/android/gms/cast/framework/zzaw;

    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/cast/framework/zzz;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zzz;-><init>(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzaw;->t2(Lcom/google/android/gms/cast/framework/zzz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    sget-object v0, Lcom/google/android/gms/cast/framework/SessionManager;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v2, "addCastStateListener"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v2, v1, v3

    .line 38
    .line 39
    const-string v2, "zzaw"

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    aput-object v2, v1, v3

    .line 43
    .line 44
    const-string v2, "Unable to call %s on %s."

    .line 45
    .line 46
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final b()I
    .locals 5

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/SessionManager;->a:Lcom/google/android/gms/cast/framework/zzaw;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzaw;->zzl()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    sget-object v1, Lcom/google/android/gms/cast/framework/SessionManager;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "addCastStateListener"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    const-string v3, "zzaw"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    const-string v3, "Unable to call %s on %s."

    .line 35
    .line 36
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v4
.end method

.method public final c()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->b:Lcom/google/android/gms/cast/framework/zzah;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzah;->zze()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v2, "getMergedSelectorAsBundle"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    const-string v2, "zzah"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    const-string v2, "Unable to call %s on %s."

    .line 32
    .line 33
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 34
    .line 35
    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public final d()Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 7
    .line 8
    return-object v0
.end method

.method public final g(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->c:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/SessionManager;->a:Lcom/google/android/gms/cast/framework/zzaw;

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/cast/framework/zzz;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zzz;-><init>(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzaw;->Z2(Lcom/google/android/gms/cast/framework/zzz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    sget-object v0, Lcom/google/android/gms/cast/framework/SessionManager;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v2, "removeCastStateListener"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    const-string v2, "zzaw"

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    aput-object v2, v1, v3

    .line 40
    .line 41
    const-string v2, "Unable to call %s on %s."

    .line 42
    .line 43
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
