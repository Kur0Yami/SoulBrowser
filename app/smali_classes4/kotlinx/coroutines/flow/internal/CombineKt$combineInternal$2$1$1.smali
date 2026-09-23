.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;->f:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;-><init>(Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;->g:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_b

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lkotlin/collections/IndexedValue;

    .line 62
    .line 63
    iget v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;->f:I

    .line 64
    .line 65
    invoke-direct {p2, v2, p1}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;->g:I

    .line 69
    .line 70
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 71
    .line 72
    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v1, :cond_4

    .line 77
    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_4
    :goto_1
    iput v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1$emit$1;->g:I

    .line 81
    .line 82
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->b(Lkotlin/coroutines/CoroutineContext;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    instance-of v2, p2, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    check-cast p2, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    move-object p2, v3

    .line 102
    :goto_2
    if-nez p2, :cond_6

    .line 103
    .line 104
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 105
    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :cond_6
    iget-object v2, p2, Lkotlinx/coroutines/internal/DispatchedContinuation;->h:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->W(Lkotlin/coroutines/CoroutineContext;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_7

    .line 115
    .line 116
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    .line 118
    iput-object v3, p2, Lkotlinx/coroutines/internal/DispatchedContinuation;->j:Ljava/lang/Object;

    .line 119
    .line 120
    iput v4, p2, Lkotlinx/coroutines/DispatchedTask;->g:I

    .line 121
    .line 122
    invoke-virtual {v2, p1, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->T(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_7
    new-instance v5, Lkotlinx/coroutines/YieldContext;

    .line 127
    .line 128
    sget-object v6, Lkotlinx/coroutines/YieldContext;->f:Lkotlinx/coroutines/YieldContext$Key;

    .line 129
    .line 130
    invoke-direct {v5, v6}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    .line 139
    iput-object v6, p2, Lkotlinx/coroutines/internal/DispatchedContinuation;->j:Ljava/lang/Object;

    .line 140
    .line 141
    iput v4, p2, Lkotlinx/coroutines/DispatchedTask;->g:I

    .line 142
    .line 143
    invoke-virtual {v2, p1, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->T(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    iget-boolean p1, v5, Lkotlinx/coroutines/YieldContext;->c:Z

    .line 147
    .line 148
    if-eqz p1, :cond_d

    .line 149
    .line 150
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->a()Lkotlinx/coroutines/EventLoop;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object v2, p1, Lkotlinx/coroutines/EventLoop;->h:Lkotlin/collections/ArrayDeque;

    .line 155
    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    goto :goto_3

    .line 163
    :cond_8
    move v2, v4

    .line 164
    :goto_3
    if-eqz v2, :cond_9

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_9
    iget-wide v7, p1, Lkotlinx/coroutines/EventLoop;->f:J

    .line 168
    .line 169
    const-wide v9, 0x100000000L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    cmp-long v2, v7, v9

    .line 175
    .line 176
    if-ltz v2, :cond_a

    .line 177
    .line 178
    move v2, v4

    .line 179
    goto :goto_4

    .line 180
    :cond_a
    const/4 v2, 0x0

    .line 181
    :goto_4
    if-eqz v2, :cond_b

    .line 182
    .line 183
    iput-object v6, p2, Lkotlinx/coroutines/internal/DispatchedContinuation;->j:Ljava/lang/Object;

    .line 184
    .line 185
    iput v4, p2, Lkotlinx/coroutines/DispatchedTask;->g:I

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/EventLoop;->Z(Lkotlinx/coroutines/DispatchedTask;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    goto :goto_8

    .line 195
    :cond_b
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/EventLoop;->a0(Z)V

    .line 196
    .line 197
    .line 198
    :try_start_0
    invoke-virtual {p2}, Lkotlinx/coroutines/DispatchedTask;->run()V

    .line 199
    .line 200
    .line 201
    :cond_c
    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoop;->b0()Z

    .line 202
    .line 203
    .line 204
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-nez v2, :cond_c

    .line 206
    .line 207
    :goto_5
    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoop;->X()V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :catchall_0
    move-exception v2

    .line 212
    :try_start_1
    invoke-virtual {p2, v2, v3}, Lkotlinx/coroutines/DispatchedTask;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :catchall_1
    move-exception p2

    .line 220
    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoop;->X()V

    .line 221
    .line 222
    .line 223
    throw p2

    .line 224
    :cond_d
    :goto_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :goto_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    if-ne p1, p2, :cond_e

    .line 233
    .line 234
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 235
    .line 236
    .line 237
    :cond_e
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    if-ne p1, p2, :cond_f

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 245
    .line 246
    :goto_9
    if-ne p1, v1, :cond_10

    .line 247
    .line 248
    :goto_a
    return-object v1

    .line 249
    :cond_10
    :goto_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 250
    .line 251
    return-object p1
.end method
