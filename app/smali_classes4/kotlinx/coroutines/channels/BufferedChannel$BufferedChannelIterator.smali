.class final Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/ChannelIterator;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/BufferedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BufferedChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelIterator<",
        "TE;>;",
        "Lkotlinx/coroutines/Waiter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "Lkotlinx/coroutines/Waiter;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3063:1\n886#2,52:3064\n964#2,8:3120\n858#2:3128\n882#2,33:3129\n974#2:3162\n916#2,14:3163\n935#2,3:3178\n979#2,6:3181\n328#3,4:3116\n332#3,8:3187\n882#4:3177\n57#5,2:3195\n57#5,2:3198\n1#6:3197\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1595#1:3064,52\n1632#1:3120,8\n1632#1:3128\n1632#1:3129,33\n1632#1:3162\n1632#1:3163,14\n1632#1:3178,3\n1632#1:3181,6\n1630#1:3116,4\n1630#1:3187,8\n1632#1:3177\n1668#1:3195,2\n1716#1:3198,2\n*E\n"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;

.field public f:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic g:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 5
    .line 6
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Lkotlinx/coroutines/internal/Symbol;

    .line 7
    .line 8
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static final c(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 10
    .line 11
    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->v()Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    .line 19
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->v()Ljava/lang/Throwable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    sget v1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a:I

    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 43
    .line 44
    int-to-long v2, v2

    .line 45
    div-long v6, v4, v2

    .line 46
    .line 47
    rem-long v2, v4, v2

    .line 48
    .line 49
    long-to-int v3, v2

    .line 50
    iget-wide v8, v0, Lkotlinx/coroutines/internal/Segment;->g:J

    .line 51
    .line 52
    cmp-long v2, v8, v6

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->u(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v2, v0

    .line 64
    :cond_3
    const/4 v6, 0x0

    .line 65
    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Lkotlinx/coroutines/internal/Symbol;

    .line 70
    .line 71
    if-eq v0, v7, :cond_12

    .line 72
    .line 73
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 74
    .line 75
    if-ne v0, v8, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->y()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    cmp-long v0, v4, v6

    .line 82
    .line 83
    if-gez v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 86
    .line 87
    .line 88
    :cond_4
    move-object v0, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Lkotlinx/coroutines/internal/Symbol;

    .line 91
    .line 92
    const/4 v9, 0x1

    .line 93
    if-ne v0, v6, :cond_11

    .line 94
    .line 95
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    :try_start_0
    iput-object v10, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 104
    .line 105
    move-object v6, p0

    .line 106
    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-ne v0, v7, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->b(Lkotlinx/coroutines/internal/Segment;I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_6
    const/4 v7, 0x0

    .line 121
    if-ne v0, v8, :cond_f

    .line 122
    .line 123
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->y()J

    .line 124
    .line 125
    .line 126
    move-result-wide v11

    .line 127
    cmp-long v0, v4, v11

    .line 128
    .line 129
    if-gez v0, :cond_7

    .line 130
    .line 131
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 132
    .line 133
    .line 134
    :cond_7
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 141
    .line 142
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->B()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_8

    .line 147
    .line 148
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;)V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 159
    .line 160
    int-to-long v2, v2

    .line 161
    div-long v11, v4, v2

    .line 162
    .line 163
    rem-long v2, v4, v2

    .line 164
    .line 165
    long-to-int v3, v2

    .line 166
    iget-wide v13, v0, Lkotlinx/coroutines/internal/Segment;->g:J

    .line 167
    .line 168
    cmp-long v2, v13, v11

    .line 169
    .line 170
    if-eqz v2, :cond_a

    .line 171
    .line 172
    invoke-virtual {v1, v11, v12, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->u(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v2, :cond_9

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_9
    :goto_2
    move-object v6, p0

    .line 180
    goto :goto_3

    .line 181
    :cond_a
    move-object v2, v0

    .line 182
    goto :goto_2

    .line 183
    :goto_3
    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Lkotlinx/coroutines/internal/Symbol;

    .line 188
    .line 189
    if-ne v0, v8, :cond_b

    .line 190
    .line 191
    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->b(Lkotlinx/coroutines/internal/Segment;I)V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_b
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 196
    .line 197
    if-ne v0, v3, :cond_d

    .line 198
    .line 199
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->y()J

    .line 200
    .line 201
    .line 202
    move-result-wide v11

    .line 203
    cmp-long v0, v4, v11

    .line 204
    .line 205
    if-gez v0, :cond_c

    .line 206
    .line 207
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 208
    .line 209
    .line 210
    :cond_c
    move-object v0, v2

    .line 211
    goto :goto_1

    .line 212
    :cond_d
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Lkotlinx/coroutines/internal/Symbol;

    .line 213
    .line 214
    if-eq v0, v1, :cond_e

    .line 215
    .line 216
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 217
    .line 218
    .line 219
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v7, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 222
    .line 223
    :goto_4
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v10, v0, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v1, "unexpected"

    .line 234
    .line 235
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :cond_f
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 243
    .line 244
    iput-object v7, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->f:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :goto_5
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->q()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-ne v0, v1, :cond_10

    .line 256
    .line 257
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 258
    .line 259
    .line 260
    :cond_10
    return-object v0

    .line 261
    :goto_6
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->z()V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_11
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 269
    .line 270
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    return-object v0

    .line 275
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    const-string v1, "unreachable"

    .line 278
    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0
.end method

.method public final b(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->b(Lkotlinx/coroutines/internal/Segment;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Lkotlinx/coroutines/internal/Symbol;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->c:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Lkotlinx/coroutines/internal/Symbol;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 15
    .line 16
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->w()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a:I

    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "`hasNext()` has not been invoked"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method
