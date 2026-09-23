.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
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
        "SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,743:1\n1#2:744\n63#3:745\n49#3,4:746\n49#3,4:750\n63#3:754\n63#3:755\n38#3:756\n63#3:757\n38#3:758\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n390#1:745\n453#1:746,4\n467#1:750,4\n474#1:754\n500#1:755\n507#1:756\n528#1:757\n532#1:758\n*E\n"
    }
.end annotation


# instance fields
.field public final c:J

.field public f:Z

.field public final g:Lokio/Buffer;

.field public final h:Lokio/Buffer;

.field public i:Z

.field public final synthetic j:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Z

    .line 9
    .line 10
    new-instance p1, Lokio/Buffer;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokio/Buffer;

    .line 16
    .line 17
    new-instance p1, Lokio/Buffer;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->h:Lokio/Buffer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->i:Z

    .line 6
    .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->h:Lokio/Buffer;

    .line 8
    .line 9
    iget-wide v2, v1, Lokio/Buffer;->f:J

    .line 10
    .line 11
    invoke-virtual {v1}, Lokio/Buffer;->a()V

    .line 12
    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    cmp-long v0, v2, v0

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 32
    .line 33
    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 34
    .line 35
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->i(J)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 41
    .line 42
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->c()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0

    .line 48
    throw v1
.end method

.method public final p0(JLokio/Buffer;)J
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-ltz v6, :cond_e

    .line 17
    .line 18
    :goto_0
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 19
    .line 20
    monitor-enter v6

    .line 21
    :try_start_0
    iget-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 27
    .line 28
    iget-boolean v8, v7, Lokhttp3/internal/http2/Http2Stream$FramingSink;->g:Z

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    const/4 v10, 0x0

    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    iget-boolean v7, v7, Lokhttp3/internal/http2/Http2Stream$FramingSink;->c:Z

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v7, v10

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    move v7, v9

    .line 42
    :goto_2
    if-eqz v7, :cond_2

    .line 43
    .line 44
    iget-object v8, v6, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 45
    .line 46
    invoke-virtual {v8}, Lokio/AsyncTimeout;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_2
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->h()Lokhttp3/internal/http2/ErrorCode;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    iget-boolean v8, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Z

    .line 60
    .line 61
    if-nez v8, :cond_3

    .line 62
    .line 63
    iget-object v8, v6, Lokhttp3/internal/http2/Http2Stream;->q:Ljava/io/IOException;

    .line 64
    .line 65
    if-nez v8, :cond_4

    .line 66
    .line 67
    new-instance v8, Lokhttp3/internal/http2/StreamResetException;

    .line 68
    .line 69
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->h()Lokhttp3/internal/http2/ErrorCode;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v8, v11}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_3
    const/4 v8, 0x0

    .line 84
    :cond_4
    :goto_4
    iget-boolean v11, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->i:Z

    .line 85
    .line 86
    if-nez v11, :cond_c

    .line 87
    .line 88
    iget-object v11, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->h:Lokio/Buffer;

    .line 89
    .line 90
    iget-wide v12, v11, Lokio/Buffer;->f:J

    .line 91
    .line 92
    cmp-long v14, v12, v4

    .line 93
    .line 94
    const-wide/16 v15, -0x1

    .line 95
    .line 96
    if-lez v14, :cond_6

    .line 97
    .line 98
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v12

    .line 102
    invoke-virtual {v11, v12, v13, v0}, Lokio/Buffer;->p0(JLokio/Buffer;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v18

    .line 106
    iget-object v9, v6, Lokhttp3/internal/http2/Http2Stream;->g:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 107
    .line 108
    const-wide/16 v20, 0x0

    .line 109
    .line 110
    const/16 v22, 0x2

    .line 111
    .line 112
    move-object/from16 v17, v9

    .line 113
    .line 114
    invoke-static/range {v17 .. v22}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJI)V

    .line 115
    .line 116
    .line 117
    iget-object v9, v6, Lokhttp3/internal/http2/Http2Stream;->g:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 118
    .line 119
    invoke-virtual {v9}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->a()J

    .line 120
    .line 121
    .line 122
    move-result-wide v11

    .line 123
    if-nez v8, :cond_5

    .line 124
    .line 125
    iget-object v9, v6, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 126
    .line 127
    iget-object v9, v9, Lokhttp3/internal/http2/Http2Connection;->u:Lokhttp3/internal/http2/Settings;

    .line 128
    .line 129
    invoke-virtual {v9}, Lokhttp3/internal/http2/Settings;->a()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    div-int/lit8 v9, v9, 0x2

    .line 134
    .line 135
    int-to-long v13, v9

    .line 136
    cmp-long v9, v11, v13

    .line 137
    .line 138
    if-ltz v9, :cond_5

    .line 139
    .line 140
    iget-object v9, v6, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 141
    .line 142
    iget v13, v6, Lokhttp3/internal/http2/Http2Stream;->c:I

    .line 143
    .line 144
    invoke-virtual {v9, v13, v11, v12}, Lokhttp3/internal/http2/Http2Connection;->l(IJ)V

    .line 145
    .line 146
    .line 147
    iget-object v9, v6, Lokhttp3/internal/http2/Http2Stream;->g:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 148
    .line 149
    const-wide/16 v21, 0x0

    .line 150
    .line 151
    const/16 v25, 0x1

    .line 152
    .line 153
    move-object/from16 v20, v9

    .line 154
    .line 155
    move-wide/from16 v23, v11

    .line 156
    .line 157
    invoke-static/range {v20 .. v25}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJI)V

    .line 158
    .line 159
    .line 160
    :cond_5
    move v9, v10

    .line 161
    goto :goto_6

    .line 162
    :cond_6
    iget-boolean v11, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Z

    .line 163
    .line 164
    if-nez v11, :cond_7

    .line 165
    .line 166
    if-nez v8, :cond_7

    .line 167
    .line 168
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .line 170
    .line 171
    :goto_5
    move-wide/from16 v18, v15

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_7
    move v9, v10

    .line 175
    goto :goto_5

    .line 176
    :goto_6
    if-eqz v7, :cond_8

    .line 177
    .line 178
    :try_start_2
    iget-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 179
    .line 180
    invoke-virtual {v7}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->l()V

    .line 181
    .line 182
    .line 183
    :cond_8
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .line 185
    monitor-exit v6

    .line 186
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 187
    .line 188
    iget-object v7, v6, Lokhttp3/internal/http2/Http2Stream;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 189
    .line 190
    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->t:Lokhttp3/internal/http2/FlowControlListener;

    .line 191
    .line 192
    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->g:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 193
    .line 194
    invoke-interface {v7, v6}, Lokhttp3/internal/http2/FlowControlListener;->a(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V

    .line 195
    .line 196
    .line 197
    if-eqz v9, :cond_9

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_9
    cmp-long v0, v18, v15

    .line 202
    .line 203
    if-eqz v0, :cond_a

    .line 204
    .line 205
    return-wide v18

    .line 206
    :cond_a
    if-nez v8, :cond_b

    .line 207
    .line 208
    return-wide v15

    .line 209
    :cond_b
    throw v8

    .line 210
    :cond_c
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 211
    .line 212
    const-string v2, "stream closed"

    .line 213
    .line 214
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    :goto_7
    if-eqz v7, :cond_d

    .line 219
    .line 220
    :try_start_4
    iget-object v2, v6, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 221
    .line 222
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->l()V

    .line 223
    .line 224
    .line 225
    :cond_d
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    :goto_8
    monitor-exit v6

    .line 227
    throw v0

    .line 228
    :cond_e
    const-string v0, "byteCount < 0: "

    .line 229
    .line 230
    invoke-static {v2, v3, v0}, Landroid/support/v4/media/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v2
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->n:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 4
    .line 5
    return-object v0
.end method
