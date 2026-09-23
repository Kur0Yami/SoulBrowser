.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;,
        Lokhttp3/OkHttpClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/OkHttpClient;",
        "Lokhttp3/Call$Factory;",
        "Lokhttp3/WebSocket$Factory;",
        "Builder",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1388:1\n2746#2,3:1389\n2746#2,3:1392\n1#3:1395\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n*L\n278#1:1389,3\n340#1:1392,3\n*E\n"
    }
.end annotation


# static fields
.field public static final B:Ljava/util/List;

.field public static final C:Ljava/util/List;


# instance fields
.field public final A:Lokhttp3/ConnectionPool;

.field public final a:Lokhttp3/Dispatcher;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lokhttp3/internal/c;

.field public final e:Z

.field public final f:Z

.field public final g:Lokhttp3/Authenticator;

.field public final h:Z

.field public final i:Z

.field public final j:Lokhttp3/CookieJar;

.field public final k:Lokhttp3/Dns;

.field public final l:Ljava/net/ProxySelector;

.field public final m:Lokhttp3/Authenticator;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;

.field public final p:Ljavax/net/ssl/X509TrustManager;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Lokhttp3/internal/tls/OkHostnameVerifier;

.field public final t:Lokhttp3/CertificatePinner;

.field public final u:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Lokhttp3/internal/connection/RouteDatabase;

.field public final z:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lokhttp3/Protocol;

    .line 3
    .line 4
    sget-object v2, Lokhttp3/Protocol;->j:Lokhttp3/Protocol;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    sget-object v2, Lokhttp3/Protocol;->h:Lokhttp3/Protocol;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    sget-object v2, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 15
    .line 16
    const-string v2, "elements"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lokhttp3/OkHttpClient;->B:Ljava/util/List;

    .line 26
    .line 27
    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    .line 28
    .line 29
    sget-object v1, Lokhttp3/ConnectionSpec;->g:Lokhttp3/ConnectionSpec;

    .line 30
    .line 31
    aput-object v1, v0, v3

    .line 32
    .line 33
    sget-object v1, Lokhttp3/ConnectionSpec;->h:Lokhttp3/ConnectionSpec;

    .line 34
    .line 35
    aput-object v1, v0, v4

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lokhttp3/OkHttpClient;->C:Ljava/util/List;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 7

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    iput-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 12
    .line 13
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->h(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    .line 20
    .line 21
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->h(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 28
    .line 29
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->e:Lokhttp3/internal/c;

    .line 30
    .line 31
    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Lokhttp3/internal/c;

    .line 32
    .line 33
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->e:Z

    .line 36
    .line 37
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->g:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->f:Z

    .line 40
    .line 41
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 42
    .line 43
    iput-object v0, p0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 44
    .line 45
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->h:Z

    .line 48
    .line 49
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    .line 52
    .line 53
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    .line 54
    .line 55
    iput-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 56
    .line 57
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 58
    .line 59
    iput-object v0, p0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Dns;

    .line 60
    .line 61
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    sget-object v0, Lokhttp3/internal/proxy/NullProxySelector;->a:Lokhttp3/internal/proxy/NullProxySelector;

    .line 68
    .line 69
    :cond_0
    iput-object v0, p0, Lokhttp3/OkHttpClient;->l:Ljava/net/ProxySelector;

    .line 70
    .line 71
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/Authenticator;

    .line 72
    .line 73
    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 74
    .line 75
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/SocketFactory;

    .line 76
    .line 77
    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/SocketFactory;

    .line 78
    .line 79
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->o:Ljava/util/List;

    .line 80
    .line 81
    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 82
    .line 83
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->p:Ljava/util/List;

    .line 84
    .line 85
    iput-object v1, p0, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    .line 86
    .line 87
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 88
    .line 89
    iput-object v1, p0, Lokhttp3/OkHttpClient;->s:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 90
    .line 91
    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->s:I

    .line 92
    .line 93
    iput v1, p0, Lokhttp3/OkHttpClient;->v:I

    .line 94
    .line 95
    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->t:I

    .line 96
    .line 97
    iput v1, p0, Lokhttp3/OkHttpClient;->w:I

    .line 98
    .line 99
    iget v1, p1, Lokhttp3/OkHttpClient$Builder;->u:I

    .line 100
    .line 101
    iput v1, p0, Lokhttp3/OkHttpClient;->x:I

    .line 102
    .line 103
    new-instance v1, Lokhttp3/internal/connection/RouteDatabase;

    .line 104
    .line 105
    invoke-direct {v1}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lokhttp3/OkHttpClient;->y:Lokhttp3/internal/connection/RouteDatabase;

    .line 109
    .line 110
    sget-object v1, Lokhttp3/internal/concurrent/TaskRunner;->p:Lokhttp3/internal/concurrent/TaskRunner;

    .line 111
    .line 112
    iput-object v1, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/concurrent/TaskRunner;

    .line 113
    .line 114
    iget-object v1, p1, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 115
    .line 116
    if-nez v1, :cond_1

    .line 117
    .line 118
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 119
    .line 120
    invoke-direct {v1}, Lokhttp3/ConnectionPool;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v1, p1, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 124
    .line 125
    :cond_1
    iput-object v1, p0, Lokhttp3/OkHttpClient;->A:Lokhttp3/ConnectionPool;

    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lokhttp3/ConnectionSpec;

    .line 153
    .line 154
    iget-boolean v2, v2, Lokhttp3/ConnectionSpec;->a:Z

    .line 155
    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 159
    .line 160
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    array-length v2, v0

    .line 184
    const/4 v3, 0x1

    .line 185
    if-ne v2, v3, :cond_5

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    aget-object v4, v0, v2

    .line 189
    .line 190
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    .line 191
    .line 192
    if-eqz v5, :cond_5

    .line 193
    .line 194
    const-string v0, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    .line 195
    .line 196
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .line 200
    .line 201
    iput-object v4, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 202
    .line 203
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    const-string v5, "trustManager"

    .line 209
    .line 210
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->l()Ljavax/net/ssl/SSLContext;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    .line 218
    .line 219
    aput-object v4, v3, v2

    .line 220
    .line 221
    invoke-virtual {v0, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v2, "getSocketFactory(...)"

    .line 229
    .line 230
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 234
    .line 235
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Lokhttp3/internal/platform/Platform;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 245
    .line 246
    iget-object p1, p1, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/CertificatePinner;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    const-string v2, "certificateChainCleaner"

    .line 252
    .line 253
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v2, p1, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 257
    .line 258
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_4

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_4
    new-instance v2, Lokhttp3/CertificatePinner;

    .line 266
    .line 267
    iget-object p1, p1, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 268
    .line 269
    invoke-direct {v2, p1, v0}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 270
    .line 271
    .line 272
    move-object p1, v2

    .line 273
    :goto_0
    iput-object p1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :catch_0
    move-exception p1

    .line 277
    new-instance v0, Ljava/lang/AssertionError;

    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v2, "No System TLS: "

    .line 282
    .line 283
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-direct {v0, v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v1, "Unexpected default trust managers: "

    .line 300
    .line 301
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    const-string v1, "toString(...)"

    .line 309
    .line 310
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_6
    :goto_1
    iput-object v1, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 331
    .line 332
    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 333
    .line 334
    iput-object v1, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 335
    .line 336
    sget-object p1, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 337
    .line 338
    iput-object p1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 339
    .line 340
    :goto_2
    iget-object p1, p0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/X509TrustManager;

    .line 341
    .line 342
    iget-object v0, p0, Lokhttp3/OkHttpClient;->u:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 343
    .line 344
    iget-object v2, p0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 345
    .line 346
    iget-object v3, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 347
    .line 348
    iget-object v4, p0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    .line 349
    .line 350
    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    .line 351
    .line 352
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-nez v6, :cond_12

    .line 360
    .line 361
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_11

    .line 369
    .line 370
    iget-object v1, p0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 371
    .line 372
    if-eqz v1, :cond_7

    .line 373
    .line 374
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_7

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_c

    .line 390
    .line 391
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Lokhttp3/ConnectionSpec;

    .line 396
    .line 397
    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->a:Z

    .line 398
    .line 399
    if-eqz v3, :cond_8

    .line 400
    .line 401
    if-eqz v2, :cond_b

    .line 402
    .line 403
    if-eqz v0, :cond_a

    .line 404
    .line 405
    if-eqz p1, :cond_9

    .line 406
    .line 407
    return-void

    .line 408
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 409
    .line 410
    const-string v0, "x509TrustManager == null"

    .line 411
    .line 412
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw p1

    .line 416
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 417
    .line 418
    const-string v0, "certificateChainCleaner == null"

    .line 419
    .line 420
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw p1

    .line 424
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 425
    .line 426
    const-string v0, "sslSocketFactory == null"

    .line 427
    .line 428
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw p1

    .line 432
    :cond_c
    :goto_3
    const-string v1, "Check failed."

    .line 433
    .line 434
    if-nez v2, :cond_10

    .line 435
    .line 436
    if-nez v0, :cond_f

    .line 437
    .line 438
    if-nez p1, :cond_e

    .line 439
    .line 440
    iget-object p1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 441
    .line 442
    sget-object v0, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 443
    .line 444
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    if-eqz p1, :cond_d

    .line 449
    .line 450
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 451
    .line 452
    return-void

    .line 453
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 454
    .line 455
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p1

    .line 459
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 460
    .line 461
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw p1

    .line 465
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 466
    .line 467
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p1

    .line 471
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 472
    .line 473
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw p1

    .line 477
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v0, "Null network interceptor: "

    .line 480
    .line 481
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 492
    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v0

    .line 501
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string v0, "Null interceptor: "

    .line 504
    .line 505
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 516
    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0
.end method
