.class public final Lokhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ConnectionSpec$Builder;,
        Lokhttp3/ConnectionSpec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokhttp3/ConnectionSpec;",
        "",
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
        "SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,384:1\n11561#2:385\n11896#2,3:386\n11561#2:389\n11896#2,3:390\n37#3,2:393\n37#3,2:395\n37#3,2:397\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n*L\n60#1:385\n60#1:386,3\n78#1:389\n78#1:390,3\n349#1:393,2\n361#1:395,2\n374#1:397,2\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/List;

.field public static final f:Ljava/util/List;

.field public static final g:Lokhttp3/ConnectionSpec;

.field public static final h:Lokhttp3/ConnectionSpec;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    sget-object v0, Lokhttp3/CipherSuite;->r:Lokhttp3/CipherSuite;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/CipherSuite;->s:Lokhttp3/CipherSuite;

    .line 4
    .line 5
    sget-object v2, Lokhttp3/CipherSuite;->t:Lokhttp3/CipherSuite;

    .line 6
    .line 7
    sget-object v3, Lokhttp3/CipherSuite;->l:Lokhttp3/CipherSuite;

    .line 8
    .line 9
    sget-object v4, Lokhttp3/CipherSuite;->n:Lokhttp3/CipherSuite;

    .line 10
    .line 11
    sget-object v5, Lokhttp3/CipherSuite;->m:Lokhttp3/CipherSuite;

    .line 12
    .line 13
    sget-object v6, Lokhttp3/CipherSuite;->o:Lokhttp3/CipherSuite;

    .line 14
    .line 15
    sget-object v7, Lokhttp3/CipherSuite;->q:Lokhttp3/CipherSuite;

    .line 16
    .line 17
    sget-object v8, Lokhttp3/CipherSuite;->p:Lokhttp3/CipherSuite;

    .line 18
    .line 19
    const/16 v9, 0x9

    .line 20
    .line 21
    new-array v10, v9, [Lokhttp3/CipherSuite;

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    aput-object v0, v10, v11

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    aput-object v1, v10, v12

    .line 28
    .line 29
    const/4 v13, 0x2

    .line 30
    aput-object v2, v10, v13

    .line 31
    .line 32
    const/4 v14, 0x3

    .line 33
    aput-object v3, v10, v14

    .line 34
    .line 35
    const/4 v15, 0x4

    .line 36
    aput-object v4, v10, v15

    .line 37
    .line 38
    const/16 v16, 0x5

    .line 39
    .line 40
    aput-object v5, v10, v16

    .line 41
    .line 42
    const/16 v17, 0x6

    .line 43
    .line 44
    aput-object v6, v10, v17

    .line 45
    .line 46
    const/16 v18, 0x7

    .line 47
    .line 48
    aput-object v7, v10, v18

    .line 49
    .line 50
    const/16 v19, 0x8

    .line 51
    .line 52
    aput-object v8, v10, v19

    .line 53
    .line 54
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    sput-object v10, Lokhttp3/ConnectionSpec;->e:Ljava/util/List;

    .line 59
    .line 60
    move/from16 v20, v9

    .line 61
    .line 62
    const/16 v9, 0x10

    .line 63
    .line 64
    new-array v9, v9, [Lokhttp3/CipherSuite;

    .line 65
    .line 66
    aput-object v0, v9, v11

    .line 67
    .line 68
    aput-object v1, v9, v12

    .line 69
    .line 70
    aput-object v2, v9, v13

    .line 71
    .line 72
    aput-object v3, v9, v14

    .line 73
    .line 74
    aput-object v4, v9, v15

    .line 75
    .line 76
    aput-object v5, v9, v16

    .line 77
    .line 78
    aput-object v6, v9, v17

    .line 79
    .line 80
    aput-object v7, v9, v18

    .line 81
    .line 82
    aput-object v8, v9, v19

    .line 83
    .line 84
    sget-object v0, Lokhttp3/CipherSuite;->j:Lokhttp3/CipherSuite;

    .line 85
    .line 86
    aput-object v0, v9, v20

    .line 87
    .line 88
    sget-object v0, Lokhttp3/CipherSuite;->k:Lokhttp3/CipherSuite;

    .line 89
    .line 90
    const/16 v1, 0xa

    .line 91
    .line 92
    aput-object v0, v9, v1

    .line 93
    .line 94
    sget-object v0, Lokhttp3/CipherSuite;->h:Lokhttp3/CipherSuite;

    .line 95
    .line 96
    const/16 v1, 0xb

    .line 97
    .line 98
    aput-object v0, v9, v1

    .line 99
    .line 100
    sget-object v0, Lokhttp3/CipherSuite;->i:Lokhttp3/CipherSuite;

    .line 101
    .line 102
    const/16 v1, 0xc

    .line 103
    .line 104
    aput-object v0, v9, v1

    .line 105
    .line 106
    sget-object v0, Lokhttp3/CipherSuite;->f:Lokhttp3/CipherSuite;

    .line 107
    .line 108
    const/16 v1, 0xd

    .line 109
    .line 110
    aput-object v0, v9, v1

    .line 111
    .line 112
    sget-object v0, Lokhttp3/CipherSuite;->g:Lokhttp3/CipherSuite;

    .line 113
    .line 114
    const/16 v1, 0xe

    .line 115
    .line 116
    aput-object v0, v9, v1

    .line 117
    .line 118
    sget-object v0, Lokhttp3/CipherSuite;->e:Lokhttp3/CipherSuite;

    .line 119
    .line 120
    const/16 v1, 0xf

    .line 121
    .line 122
    aput-object v0, v9, v1

    .line 123
    .line 124
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lokhttp3/ConnectionSpec;->f:Ljava/util/List;

    .line 129
    .line 130
    new-instance v1, Lokhttp3/ConnectionSpec$Builder;

    .line 131
    .line 132
    invoke-direct {v1, v12}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 133
    .line 134
    .line 135
    new-array v2, v11, [Lokhttp3/CipherSuite;

    .line 136
    .line 137
    invoke-interface {v10, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, [Lokhttp3/CipherSuite;

    .line 142
    .line 143
    array-length v3, v2

    .line 144
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, [Lokhttp3/CipherSuite;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lokhttp3/ConnectionSpec$Builder;->c([Lokhttp3/CipherSuite;)V

    .line 151
    .line 152
    .line 153
    sget-object v2, Lokhttp3/TlsVersion;->g:Lokhttp3/TlsVersion;

    .line 154
    .line 155
    sget-object v3, Lokhttp3/TlsVersion;->h:Lokhttp3/TlsVersion;

    .line 156
    .line 157
    new-array v4, v13, [Lokhttp3/TlsVersion;

    .line 158
    .line 159
    aput-object v2, v4, v11

    .line 160
    .line 161
    aput-object v3, v4, v12

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Lokhttp3/ConnectionSpec$Builder;->e([Lokhttp3/TlsVersion;)V

    .line 164
    .line 165
    .line 166
    iput-boolean v12, v1, Lokhttp3/ConnectionSpec$Builder;->d:Z

    .line 167
    .line 168
    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 169
    .line 170
    .line 171
    new-instance v1, Lokhttp3/ConnectionSpec$Builder;

    .line 172
    .line 173
    invoke-direct {v1, v12}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 174
    .line 175
    .line 176
    new-array v4, v11, [Lokhttp3/CipherSuite;

    .line 177
    .line 178
    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, [Lokhttp3/CipherSuite;

    .line 183
    .line 184
    array-length v5, v4

    .line 185
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, [Lokhttp3/CipherSuite;

    .line 190
    .line 191
    invoke-virtual {v1, v4}, Lokhttp3/ConnectionSpec$Builder;->c([Lokhttp3/CipherSuite;)V

    .line 192
    .line 193
    .line 194
    new-array v4, v13, [Lokhttp3/TlsVersion;

    .line 195
    .line 196
    aput-object v2, v4, v11

    .line 197
    .line 198
    aput-object v3, v4, v12

    .line 199
    .line 200
    invoke-virtual {v1, v4}, Lokhttp3/ConnectionSpec$Builder;->e([Lokhttp3/TlsVersion;)V

    .line 201
    .line 202
    .line 203
    iput-boolean v12, v1, Lokhttp3/ConnectionSpec$Builder;->d:Z

    .line 204
    .line 205
    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sput-object v1, Lokhttp3/ConnectionSpec;->g:Lokhttp3/ConnectionSpec;

    .line 210
    .line 211
    new-instance v1, Lokhttp3/ConnectionSpec$Builder;

    .line 212
    .line 213
    invoke-direct {v1, v12}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 214
    .line 215
    .line 216
    new-array v4, v11, [Lokhttp3/CipherSuite;

    .line 217
    .line 218
    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, [Lokhttp3/CipherSuite;

    .line 223
    .line 224
    array-length v4, v0

    .line 225
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, [Lokhttp3/CipherSuite;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionSpec$Builder;->c([Lokhttp3/CipherSuite;)V

    .line 232
    .line 233
    .line 234
    new-array v0, v15, [Lokhttp3/TlsVersion;

    .line 235
    .line 236
    aput-object v2, v0, v11

    .line 237
    .line 238
    aput-object v3, v0, v12

    .line 239
    .line 240
    sget-object v2, Lokhttp3/TlsVersion;->i:Lokhttp3/TlsVersion;

    .line 241
    .line 242
    aput-object v2, v0, v13

    .line 243
    .line 244
    sget-object v2, Lokhttp3/TlsVersion;->j:Lokhttp3/TlsVersion;

    .line 245
    .line 246
    aput-object v2, v0, v14

    .line 247
    .line 248
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionSpec$Builder;->e([Lokhttp3/TlsVersion;)V

    .line 249
    .line 250
    .line 251
    iput-boolean v12, v1, Lokhttp3/ConnectionSpec$Builder;->d:Z

    .line 252
    .line 253
    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 254
    .line 255
    .line 256
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    .line 257
    .line 258
    invoke-direct {v0, v11}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sput-object v0, Lokhttp3/ConnectionSpec;->h:Lokhttp3/ConnectionSpec;

    .line 266
    .line 267
    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lokhttp3/ConnectionSpec;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 13

    .line 1
    const-string v0, "sslSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "<this>"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "socketEnabledCipherSuites"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    sget-object v3, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    .line 28
    .line 29
    invoke-static {v2, v0, v3}, Lokhttp3/internal/_UtilCommonKt;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_0
    iget-object v3, p0, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "getEnabledProtocols(...)"

    .line 42
    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->naturalOrder()Ljava/util/Comparator;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v4, v3, v5}, Lokhttp3/internal/_UtilCommonKt;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v6, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    .line 67
    .line 68
    sget-object v7, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 69
    .line 70
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v7, "TLS_FALLBACK_SCSV"

    .line 74
    .line 75
    const-string v8, "value"

    .line 76
    .line 77
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v9, "comparator"

    .line 81
    .line 82
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    array-length v9, v5

    .line 86
    const/4 v10, 0x0

    .line 87
    :goto_1
    const/4 v11, -0x1

    .line 88
    if-ge v10, v9, :cond_3

    .line 89
    .line 90
    aget-object v12, v5, v10

    .line 91
    .line 92
    invoke-virtual {v6, v12, v7}, Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-nez v12, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move v10, v11

    .line 103
    :goto_2
    if-eqz p2, :cond_4

    .line 104
    .line 105
    if-eq v10, v11, :cond_4

    .line 106
    .line 107
    aget-object p2, v5, v10

    .line 108
    .line 109
    const-string v5, "get(...)"

    .line 110
    .line 111
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    array-length v1, v0

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "copyOf(...)"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast v0, [Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    aput-object p2, v0, v1

    .line 139
    .line 140
    :cond_4
    new-instance p2, Lokhttp3/ConnectionSpec$Builder;

    .line 141
    .line 142
    const-string v1, "connectionSpec"

    .line 143
    .line 144
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->a:Z

    .line 151
    .line 152
    iput-boolean v1, p2, Lokhttp3/ConnectionSpec$Builder;->a:Z

    .line 153
    .line 154
    iput-object v2, p2, Lokhttp3/ConnectionSpec$Builder;->b:[Ljava/lang/String;

    .line 155
    .line 156
    iput-object v3, p2, Lokhttp3/ConnectionSpec$Builder;->c:[Ljava/lang/String;

    .line 157
    .line 158
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->b:Z

    .line 159
    .line 160
    iput-boolean v1, p2, Lokhttp3/ConnectionSpec$Builder;->d:Z

    .line 161
    .line 162
    array-length v1, v0

    .line 163
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, [Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p2, v0}, Lokhttp3/ConnectionSpec$Builder;->b([Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    array-length v0, v4

    .line 173
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, [Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Lokhttp3/ConnectionSpec$Builder;->d([Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lokhttp3/ConnectionSpec;->c()Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    iget-object v0, p2, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_5
    invoke-virtual {p2}, Lokhttp3/ConnectionSpec;->b()Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    iget-object p2, p2, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    sget-object v5, Lokhttp3/CipherSuite;->b:Lokhttp3/CipherSuite$Companion;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Lokhttp3/CipherSuite$Companion;->b(Ljava/lang/String;)Lokhttp3/CipherSuite;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    sget-object v5, Lokhttp3/TlsVersion;->f:Lokhttp3/TlsVersion$Companion;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Lokhttp3/TlsVersion$Companion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lokhttp3/ConnectionSpec;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lokhttp3/ConnectionSpec;

    .line 10
    .line 11
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec;->a:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->a:Z

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    if-eqz v1, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p1, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->b:Z

    .line 43
    .line 44
    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->b:Z

    .line 45
    .line 46
    if-eq v0, p1, :cond_5

    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 51
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    const/16 v2, 0x20f

    .line 17
    .line 18
    add-int/2addr v2, v1

    .line 19
    mul-int/lit8 v2, v2, 0x1f

    .line 20
    .line 21
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    add-int/2addr v2, v0

    .line 30
    mul-int/lit8 v2, v2, 0x1f

    .line 31
    .line 32
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->b:Z

    .line 33
    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    add-int/2addr v2, v0

    .line 37
    return v2

    .line 38
    :cond_2
    const/16 v0, 0x11

    .line 39
    .line 40
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ConnectionSpec()"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "ConnectionSpec(cipherSuites="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->b()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "[all enabled]"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", tlsVersions="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->c()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", supportsTlsExtensions="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->b:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x29

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
