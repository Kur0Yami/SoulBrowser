.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
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


# static fields
.field public static final b:Lokio/ByteString;

.field public static final c:Ljava/util/List;

.field public static final d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final a:Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lokio/ByteString;->h:Lokio/ByteString;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [B

    .line 5
    .line 6
    const/16 v2, 0x2a

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    const-string v2, "data"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lokio/ByteString;

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "copyOf(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v0}, Lokio/ByteString;-><init>([B)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Lokio/ByteString;

    .line 31
    .line 32
    const-string v0, "*"

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 41
    .line 42
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;->a:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    .line 43
    .line 44
    const-string v2, "<this>"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;

    .line 50
    .line 51
    invoke-direct {v1}, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>(Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;)V
    .locals 1

    .line 1
    const-string v0, "publicSuffixList"

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
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;

    .line 10
    .line 11
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/16 v1, 0x2e

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-char v1, v0, v2

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;[C)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "domain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;

    .line 18
    .line 19
    iget-object v2, v1, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move v2, v5

    .line 36
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->c()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception v3

    .line 52
    :try_start_1
    iput-object v3, v1, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->e:Ljava/io/IOException;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    move v2, v4

    .line 61
    goto :goto_0

    .line 62
    :goto_2
    if-eqz v2, :cond_0

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    .line 70
    .line 71
    :cond_0
    throw p1

    .line 72
    :cond_1
    :try_start_2
    iget-object v2, v1, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->b:Ljava/util/concurrent/CountDownLatch;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_3
    iget-object v2, v1, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->c:Lokio/ByteString;

    .line 86
    .line 87
    if-eqz v2, :cond_14

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    new-array v3, v2, [Lokio/ByteString;

    .line 94
    .line 95
    move v6, v5

    .line 96
    :goto_4
    if-ge v6, v2, :cond_3

    .line 97
    .line 98
    sget-object v7, Lokio/ByteString;->h:Lokio/ByteString;

    .line 99
    .line 100
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v7}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    aput-object v7, v3, v6

    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    move v6, v5

    .line 116
    :goto_5
    const/4 v7, 0x0

    .line 117
    if-ge v6, v2, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->a()Lokio/ByteString;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v8, v3, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->a(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_5
    move-object v8, v7

    .line 134
    :goto_6
    if-le v2, v4, :cond_7

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, [Lokio/ByteString;

    .line 141
    .line 142
    array-length v9, v6

    .line 143
    sub-int/2addr v9, v4

    .line 144
    move v10, v5

    .line 145
    :goto_7
    if-ge v10, v9, :cond_7

    .line 146
    .line 147
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Lokio/ByteString;

    .line 148
    .line 149
    aput-object v11, v6, v10

    .line 150
    .line 151
    invoke-virtual {v1}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->a()Lokio/ByteString;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    invoke-static {v11, v6, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->a(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    if-eqz v11, :cond_6

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_7
    move-object v11, v7

    .line 166
    :goto_8
    if-eqz v11, :cond_a

    .line 167
    .line 168
    sub-int/2addr v2, v4

    .line 169
    move v6, v5

    .line 170
    :goto_9
    if-ge v6, v2, :cond_a

    .line 171
    .line 172
    iget-object v9, v1, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->d:Lokio/ByteString;

    .line 173
    .line 174
    if-eqz v9, :cond_8

    .line 175
    .line 176
    goto :goto_a

    .line 177
    :cond_8
    const-string v9, "exceptionBytes"

    .line 178
    .line 179
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    move-object v9, v7

    .line 183
    :goto_a
    invoke-static {v9, v3, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->a(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    if-eqz v9, :cond_9

    .line 188
    .line 189
    goto :goto_b

    .line 190
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_a
    move-object v9, v7

    .line 194
    :goto_b
    const/16 v1, 0x2e

    .line 195
    .line 196
    if-eqz v9, :cond_b

    .line 197
    .line 198
    const-string v2, "!"

    .line 199
    .line 200
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    new-array v3, v4, [C

    .line 205
    .line 206
    aput-char v1, v3, v5

    .line 207
    .line 208
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;[C)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    goto :goto_c

    .line 213
    :cond_b
    if-nez v8, :cond_c

    .line 214
    .line 215
    if-nez v11, :cond_c

    .line 216
    .line 217
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:Ljava/util/List;

    .line 218
    .line 219
    goto :goto_c

    .line 220
    :cond_c
    if-eqz v8, :cond_d

    .line 221
    .line 222
    new-array v2, v4, [C

    .line 223
    .line 224
    aput-char v1, v2, v5

    .line 225
    .line 226
    invoke-static {v8, v2}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;[C)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-nez v2, :cond_e

    .line 231
    .line 232
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    :cond_e
    if-eqz v11, :cond_f

    .line 237
    .line 238
    new-array v3, v4, [C

    .line 239
    .line 240
    aput-char v1, v3, v5

    .line 241
    .line 242
    invoke-static {v11, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;[C)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-nez v1, :cond_10

    .line 247
    .line 248
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-le v3, v6, :cond_11

    .line 261
    .line 262
    move-object v1, v2

    .line 263
    :cond_11
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    const/16 v6, 0x21

    .line 272
    .line 273
    if-ne v2, v3, :cond_12

    .line 274
    .line 275
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eq v2, v6, :cond_12

    .line 286
    .line 287
    return-object v7

    .line 288
    :cond_12
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-ne v2, v6, :cond_13

    .line 299
    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    :goto_d
    sub-int/2addr v0, v1

    .line 309
    goto :goto_e

    .line 310
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    add-int/2addr v1, v4

    .line 319
    goto :goto_d

    .line 320
    :goto_e
    invoke-static {p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b(Ljava/lang/String;)Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string v0, "."

    .line 333
    .line 334
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    return-object p1

    .line 339
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v2, "Unable to load "

    .line 344
    .line 345
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v2, v1, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;->f:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v2, " resource."

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v0, v1, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;->e:Ljava/io/IOException;

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 368
    .line 369
    .line 370
    throw p1
.end method
