.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReaderRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/Function0;",
        "",
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
        "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n*L\n1#1,1042:1\n63#2:1043\n63#2:1044\n63#2:1045\n63#2:1048\n63#2:1049\n38#2:1050\n63#2:1051\n63#2:1054\n38#2:1055\n63#2:1056\n37#3,2:1046\n37#3,2:1052\n228#4,5:1057\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n678#1:1043\n757#1:1044\n758#1:1045\n792#1:1048\n809#1:1049\n819#1:1050\n845#1:1051\n864#1:1054\n866#1:1055\n871#1:1056\n775#1:1046,2\n846#1:1052,2\n703#1:1057,5\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lokhttp3/internal/http2/Http2Reader;

.field public final synthetic f:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "reader"

    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    .line 11
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Reader;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(ZILokio/BufferedSource;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move/from16 v6, p4

    .line 8
    .line 9
    const-string v2, "source"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 15
    .line 16
    sget-object v2, Lokhttp3/internal/http2/Http2Connection;->D:Lokhttp3/internal/http2/Settings;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    and-int/lit8 v2, v4, 0x1

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, "source"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lokio/Buffer;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    int-to-long v7, v6

    .line 35
    invoke-interface {v0, v7, v8}, Lokio/BufferedSource;->D0(J)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v7, v8, v5}, Lokio/Source;->p0(JLokio/Buffer;)J

    .line 39
    .line 40
    .line 41
    iget-object v0, v3, Lokhttp3/internal/http2/Http2Connection;->m:Lokhttp3/internal/concurrent/TaskQueue;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v7, v3, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v7, 0x5b

    .line 54
    .line 55
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v7, "] onData"

    .line 62
    .line 63
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    new-instance v2, Lokhttp3/internal/http2/a;

    .line 71
    .line 72
    move/from16 v7, p1

    .line 73
    .line 74
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/a;-><init>(Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x6

    .line 78
    invoke-static {v0, v8, v2, v3}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 89
    .line 90
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 91
    .line 92
    invoke-virtual {v2, v4, v3}, Lokhttp3/internal/http2/Http2Connection;->k(ILokhttp3/internal/http2/ErrorCode;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 96
    .line 97
    int-to-long v3, v6

    .line 98
    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->i(J)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    const-string v3, "source"

    .line 106
    .line 107
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v3, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 111
    .line 112
    iget-object v3, v2, Lokhttp3/internal/http2/Http2Stream;->l:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 113
    .line 114
    int-to-long v4, v6

    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-string v6, "source"

    .line 119
    .line 120
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-wide v6, v4

    .line 124
    :goto_0
    const-wide/16 v8, 0x0

    .line 125
    .line 126
    cmp-long v10, v6, v8

    .line 127
    .line 128
    const/4 v11, 0x1

    .line 129
    if-lez v10, :cond_9

    .line 130
    .line 131
    iget-object v10, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 132
    .line 133
    monitor-enter v10

    .line 134
    :try_start_0
    iget-boolean v12, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Z

    .line 135
    .line 136
    iget-object v13, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->h:Lokio/Buffer;

    .line 137
    .line 138
    iget-wide v13, v13, Lokio/Buffer;->f:J

    .line 139
    .line 140
    add-long/2addr v13, v6

    .line 141
    move-wide v15, v8

    .line 142
    iget-wide v8, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:J

    .line 143
    .line 144
    cmp-long v8, v13, v8

    .line 145
    .line 146
    const/4 v9, 0x0

    .line 147
    if-lez v8, :cond_2

    .line 148
    .line 149
    move v8, v11

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    move v8, v9

    .line 152
    :goto_1
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    .line 154
    monitor-exit v10

    .line 155
    if-eqz v8, :cond_3

    .line 156
    .line 157
    invoke-interface {v0, v6, v7}, Lokio/BufferedSource;->skip(J)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 161
    .line 162
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->j:Lokhttp3/internal/http2/ErrorCode;

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Lokhttp3/internal/http2/Http2Stream;->g(Lokhttp3/internal/http2/ErrorCode;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_3
    if-eqz v12, :cond_4

    .line 169
    .line 170
    invoke-interface {v0, v6, v7}, Lokio/BufferedSource;->skip(J)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_4
    iget-object v8, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokio/Buffer;

    .line 175
    .line 176
    invoke-interface {v0, v6, v7, v8}, Lokio/Source;->p0(JLokio/Buffer;)J

    .line 177
    .line 178
    .line 179
    move-result-wide v12

    .line 180
    const-wide/16 v17, -0x1

    .line 181
    .line 182
    cmp-long v8, v12, v17

    .line 183
    .line 184
    if-eqz v8, :cond_8

    .line 185
    .line 186
    sub-long/2addr v6, v12

    .line 187
    iget-object v8, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 188
    .line 189
    monitor-enter v8

    .line 190
    :try_start_1
    iget-boolean v10, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->i:Z

    .line 191
    .line 192
    if-eqz v10, :cond_5

    .line 193
    .line 194
    iget-object v9, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokio/Buffer;

    .line 195
    .line 196
    invoke-virtual {v9}, Lokio/Buffer;->a()V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    goto :goto_4

    .line 202
    :cond_5
    iget-object v10, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->h:Lokio/Buffer;

    .line 203
    .line 204
    iget-wide v12, v10, Lokio/Buffer;->f:J

    .line 205
    .line 206
    cmp-long v12, v12, v15

    .line 207
    .line 208
    if-nez v12, :cond_6

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    move v11, v9

    .line 212
    :goto_2
    iget-object v9, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokio/Buffer;

    .line 213
    .line 214
    invoke-virtual {v10, v9}, Lokio/Buffer;->u(Lokio/Source;)J

    .line 215
    .line 216
    .line 217
    if-eqz v11, :cond_7

    .line 218
    .line 219
    const-string v9, "null cannot be cast to non-null type java.lang.Object"

    .line 220
    .line 221
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_3
    monitor-exit v8

    .line 228
    goto :goto_0

    .line 229
    :goto_4
    monitor-exit v8

    .line 230
    throw v0

    .line 231
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    monitor-exit v10

    .line 239
    throw v0

    .line 240
    :cond_9
    iget-object v0, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 241
    .line 242
    sget-object v6, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 243
    .line 244
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 245
    .line 246
    invoke-virtual {v0, v4, v5}, Lokhttp3/internal/http2/Http2Connection;->i(J)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v3, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 250
    .line 251
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 252
    .line 253
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->t:Lokhttp3/internal/http2/FlowControlListener;

    .line 254
    .line 255
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->g:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 256
    .line 257
    invoke-interface {v3, v0}, Lokhttp3/internal/http2/FlowControlListener;->a(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V

    .line 258
    .line 259
    .line 260
    :goto_5
    if-eqz p1, :cond_a

    .line 261
    .line 262
    sget-object v0, Lokhttp3/Headers;->f:Lokhttp3/Headers;

    .line 263
    .line 264
    invoke-virtual {v2, v0, v11}, Lokhttp3/internal/http2/Http2Stream;->k(Lokhttp3/Headers;Z)V

    .line 265
    .line 266
    .line 267
    :cond_a
    return-void
.end method

.method public final b(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 3

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "debugData"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lokio/ByteString;->d()I

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 15
    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    iget-object p3, p2, Lokhttp3/internal/http2/Http2Connection;->f:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v1, v0, [Lokhttp3/internal/http2/Http2Stream;

    .line 25
    .line 26
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p2, Lokhttp3/internal/http2/Http2Connection;->j:Z

    .line 32
    .line 33
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit p2

    .line 36
    check-cast p3, [Lokhttp3/internal/http2/Http2Stream;

    .line 37
    .line 38
    array-length p2, p3

    .line 39
    :goto_0
    if-ge v0, p2, :cond_1

    .line 40
    .line 41
    aget-object v1, p3, v0

    .line 42
    .line 43
    iget v2, v1, Lokhttp3/internal/http2/Http2Stream;->c:I

    .line 44
    .line 45
    if-le v2, p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->i()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->l(Lokhttp3/internal/http2/ErrorCode;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 59
    .line 60
    iget v1, v1, Lokhttp3/internal/http2/Http2Stream;->c:I

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->e(I)Lokhttp3/internal/http2/Http2Stream;

    .line 63
    .line 64
    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p2

    .line 71
    throw p1
.end method

.method public final c(ILjava/util/List;Z)V
    .locals 8

    .line 1
    const-string v0, "headerBlock"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 7
    .line 8
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->D:Lokhttp3/internal/http2/Settings;

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    const/16 v7, 0x5b

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    and-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "requestHeaders"

    .line 20
    .line 21
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v3, Lokhttp3/internal/http2/Http2Connection;->m:Lokhttp3/internal/concurrent/TaskQueue;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v4, v3, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "] onHeaders"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v4, Lokhttp3/internal/http2/c;

    .line 52
    .line 53
    invoke-direct {v4, v3, p1, p2, p3}, Lokhttp3/internal/http2/c;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, v4, v0}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    monitor-enter v3

    .line 61
    :try_start_0
    invoke-virtual {v3, p1}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    iget-boolean v1, v3, Lokhttp3/internal/http2/Http2Connection;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    monitor-exit v3

    .line 72
    return-void

    .line 73
    :cond_1
    :try_start_1
    iget v1, v3, Lokhttp3/internal/http2/Http2Connection;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    if-gt p1, v1, :cond_2

    .line 76
    .line 77
    monitor-exit v3

    .line 78
    return-void

    .line 79
    :cond_2
    :try_start_2
    rem-int/lit8 v1, p1, 0x2

    .line 80
    .line 81
    iget v2, v3, Lokhttp3/internal/http2/Http2Connection;->i:I

    .line 82
    .line 83
    rem-int/lit8 v2, v2, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    if-ne v1, v2, :cond_3

    .line 86
    .line 87
    monitor-exit v3

    .line 88
    return-void

    .line 89
    :cond_3
    :try_start_3
    invoke-static {p2}, Lokhttp3/internal/_UtilJvmKt;->f(Ljava/util/List;)Lokhttp3/Headers;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    new-instance v1, Lokhttp3/internal/http2/Http2Stream;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    move v2, p1

    .line 97
    move v5, p3

    .line 98
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 99
    .line 100
    .line 101
    iput v2, v3, Lokhttp3/internal/http2/Http2Connection;->h:I

    .line 102
    .line 103
    iget-object p1, v3, Lokhttp3/internal/http2/Http2Connection;->f:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object p1, v3, Lokhttp3/internal/http2/Http2Connection;->k:Lokhttp3/internal/concurrent/TaskRunner;

    .line 113
    .line 114
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object p3, v3, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p3, "] onStream"

    .line 135
    .line 136
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    new-instance p3, Lokhttp3/internal/http2/g;

    .line 144
    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-direct {p3, v2, v3, v1}, Lokhttp3/internal/http2/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, p2, p3, v0}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    monitor-exit v3

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    move-object p1, v0

    .line 156
    goto :goto_0

    .line 157
    :cond_4
    move v5, p3

    .line 158
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    .line 160
    monitor-exit v3

    .line 161
    invoke-static {p2}, Lokhttp3/internal/_UtilJvmKt;->f(Ljava/util/List;)Lokhttp3/Headers;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v1, p1, v5}, Lokhttp3/internal/http2/Http2Stream;->k(Lokhttp3/Headers;Z)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :goto_0
    monitor-exit v3

    .line 170
    throw p1
.end method

.method public final d(IIZ)V
    .locals 4

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    const/4 p3, 0x1

    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    if-eq p1, p3, :cond_2

    .line 10
    .line 11
    const/4 p3, 0x2

    .line 12
    if-eq p1, p3, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-eq p1, p3, :cond_0

    .line 16
    .line 17
    :goto_0
    :try_start_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    .line 23
    .line 24
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-wide v2, p2, Lokhttp3/internal/http2/Http2Connection;->r:J

    .line 32
    .line 33
    add-long/2addr v2, v0

    .line 34
    iput-wide v2, p2, Lokhttp3/internal/http2/Http2Connection;->r:J

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-wide v2, p2, Lokhttp3/internal/http2/Http2Connection;->p:J

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    iput-wide v2, p2, Lokhttp3/internal/http2/Http2Connection;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    :goto_1
    monitor-exit p2

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit p2

    .line 45
    throw p1

    .line 46
    :cond_3
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 47
    .line 48
    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/concurrent/TaskQueue;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 56
    .line 57
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, " ping"

    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 66
    .line 67
    new-instance v2, Lokhttp3/internal/http2/f;

    .line 68
    .line 69
    invoke-direct {v2, v1, p1, p2}, Lokhttp3/internal/http2/f;-><init>(Lokhttp3/internal/http2/Http2Connection;II)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x6

    .line 73
    invoke-static {p3, v0, v2, p1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final e(ILjava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 7
    .line 8
    const-string v1, "requestHeaders"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->C:Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->k(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->C:Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->m:Lokhttp3/internal/concurrent/TaskQueue;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x5b

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "] onRequest"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lokhttp3/internal/http2/c;

    .line 75
    .line 76
    invoke-direct {v3, v0, p1, p2}, Lokhttp3/internal/http2/c;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x6

    .line 80
    invoke-static {v1, v2, v3, p1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_0
    monitor-exit v0

    .line 85
    throw p1
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Reader;

    .line 4
    .line 5
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->i:Lokhttp3/internal/http2/ErrorCode;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "handler"

    .line 9
    .line 10
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v1, v4, p0}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v4, 0x0

    .line 21
    :try_start_1
    invoke-virtual {v1, v4, p0}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->g:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    :try_start_2
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->l:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    invoke-virtual {v0, v4, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->a(Ljava/io/Closeable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_4

    .line 38
    :catchall_0
    move-exception v5

    .line 39
    goto :goto_5

    .line 40
    :catch_0
    move-exception v3

    .line 41
    goto :goto_3

    .line 42
    :catchall_1
    move-exception v5

    .line 43
    :goto_1
    move-object v4, v2

    .line 44
    goto :goto_5

    .line 45
    :catch_1
    move-exception v3

    .line 46
    move-object v4, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v5, "Required SETTINGS preface not received"

    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 56
    :goto_2
    move-object v5, v4

    .line 57
    goto :goto_1

    .line 58
    :catchall_2
    move-exception v4

    .line 59
    goto :goto_2

    .line 60
    :goto_3
    :try_start_4
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->h:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    .line 62
    invoke-virtual {v0, v2, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object v0

    .line 69
    :goto_5
    invoke-virtual {v0, v4, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->a(Ljava/io/Closeable;)V

    .line 73
    .line 74
    .line 75
    throw v5
.end method
