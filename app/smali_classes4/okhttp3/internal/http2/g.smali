.class public final synthetic Lokhttp3/internal/http2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/g;->c:I

    iput-object p2, p0, Lokhttp3/internal/http2/g;->f:Ljava/lang/Object;

    iput-object p3, p0, Lokhttp3/internal/http2/g;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/g;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 9
    .line 10
    iget-object v1, p0, Lokhttp3/internal/http2/g;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 13
    .line 14
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->c:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 15
    .line 16
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lokhttp3/internal/http2/Settings;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection$Listener;->a(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/http2/g;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 29
    .line 30
    iget-object v1, p0, Lokhttp3/internal/http2/g;->g:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lokhttp3/internal/http2/Settings;

    .line 33
    .line 34
    const-string v2, "settings"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 45
    .line 46
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->A:Lokhttp3/internal/http2/Http2Writer;

    .line 47
    .line 48
    monitor-enter v3

    .line 49
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->v:Lokhttp3/internal/http2/Settings;

    .line 51
    .line 52
    new-instance v5, Lokhttp3/internal/http2/Settings;

    .line 53
    .line 54
    invoke-direct {v5}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v4}, Lokhttp3/internal/http2/Settings;->b(Lokhttp3/internal/http2/Settings;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Lokhttp3/internal/http2/Settings;->b(Lokhttp3/internal/http2/Settings;)V

    .line 61
    .line 62
    .line 63
    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v5}, Lokhttp3/internal/http2/Settings;->a()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    int-to-long v5, v1

    .line 70
    invoke-virtual {v4}, Lokhttp3/internal/http2/Settings;->a()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    int-to-long v7, v1

    .line 75
    sub-long/2addr v5, v7

    .line 76
    const-wide/16 v7, 0x0

    .line 77
    .line 78
    cmp-long v1, v5, v7

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    iget-object v7, v0, Lokhttp3/internal/http2/Http2Connection;->f:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v7, v0, Lokhttp3/internal/http2/Http2Connection;->f:Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    new-array v8, v4, [Lokhttp3/internal/http2/Http2Stream;

    .line 99
    .line 100
    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, [Lokhttp3/internal/http2/Http2Stream;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    goto :goto_4

    .line 109
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 110
    :goto_1
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v8, Lokhttp3/internal/http2/Settings;

    .line 113
    .line 114
    const-string v9, "<set-?>"

    .line 115
    .line 116
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v8, v0, Lokhttp3/internal/http2/Http2Connection;->v:Lokhttp3/internal/http2/Settings;

    .line 120
    .line 121
    iget-object v8, v0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 122
    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v10, v0, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v10, " onSettings"

    .line 134
    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    new-instance v10, Lokhttp3/internal/http2/g;

    .line 143
    .line 144
    const/4 v11, 0x2

    .line 145
    invoke-direct {v10, v11, v0, v2}, Lokhttp3/internal/http2/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const/4 v11, 0x6

    .line 149
    invoke-static {v8, v9, v10, v11}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 150
    .line 151
    .line 152
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    iget-object v8, v0, Lokhttp3/internal/http2/Http2Connection;->A:Lokhttp3/internal/http2/Http2Writer;

    .line 156
    .line 157
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v2, Lokhttp3/internal/http2/Settings;

    .line 160
    .line 161
    invoke-virtual {v8, v2}, Lokhttp3/internal/http2/Http2Writer;->a(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catchall_1
    move-exception v0

    .line 166
    goto :goto_5

    .line 167
    :catch_0
    move-exception v2

    .line 168
    :try_start_4
    sget-object v8, Lokhttp3/internal/http2/ErrorCode;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 169
    .line 170
    invoke-virtual {v0, v8, v8, v2}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 171
    .line 172
    .line 173
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    .line 175
    monitor-exit v3

    .line 176
    if-eqz v7, :cond_3

    .line 177
    .line 178
    array-length v0, v7

    .line 179
    :goto_3
    if-ge v4, v0, :cond_3

    .line 180
    .line 181
    aget-object v2, v7, v4

    .line 182
    .line 183
    monitor-enter v2

    .line 184
    :try_start_5
    iget-wide v8, v2, Lokhttp3/internal/http2/Http2Stream;->i:J

    .line 185
    .line 186
    add-long/2addr v8, v5

    .line 187
    iput-wide v8, v2, Lokhttp3/internal/http2/Http2Stream;->i:J

    .line 188
    .line 189
    if-lez v1, :cond_2

    .line 190
    .line 191
    const-string v3, "null cannot be cast to non-null type java.lang.Object"

    .line 192
    .line 193
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 197
    .line 198
    .line 199
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 200
    .line 201
    monitor-exit v2

    .line 202
    add-int/lit8 v4, v4, 0x1

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :catchall_2
    move-exception v0

    .line 206
    monitor-exit v2

    .line 207
    throw v0

    .line 208
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 209
    .line 210
    return-object v0

    .line 211
    :goto_4
    :try_start_6
    monitor-exit v0

    .line 212
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 213
    :goto_5
    monitor-exit v3

    .line 214
    throw v0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lokhttp3/internal/http2/g;->f:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 218
    .line 219
    iget-object v1, p0, Lokhttp3/internal/http2/g;->g:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v1, Lokhttp3/internal/http2/Http2Stream;

    .line 222
    .line 223
    :try_start_7
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->c:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 224
    .line 225
    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection$Listener;->c(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :catch_1
    move-exception v2

    .line 230
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 231
    .line 232
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 233
    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v5, "Http2Connection.Listener failure for "

    .line 237
    .line 238
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const/4 v4, 0x4

    .line 251
    invoke-virtual {v3, v4, v0, v2}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :try_start_8
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 255
    .line 256
    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/http2/Http2Stream;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 257
    .line 258
    .line 259
    :catch_2
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    .line 261
    return-object v0

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
