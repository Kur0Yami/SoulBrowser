.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x33,
        0x49,
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field public c:Lkotlinx/coroutines/channels/Channel;

.field public f:[B

.field public g:I

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public final synthetic n:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/Flow;

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->l:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 6
    .line 7
    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 8
    .line 9
    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->l:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/Flow;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 11
    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    if-eq v2, v8, :cond_2

    .line 19
    .line 20
    if-eq v2, v6, :cond_1

    .line 21
    .line 22
    if-ne v2, v5, :cond_0

    .line 23
    .line 24
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    .line 25
    .line 26
    iget v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    .line 27
    .line 28
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:[B

    .line 29
    .line 30
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:Lkotlinx/coroutines/channels/Channel;

    .line 31
    .line 32
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v12, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v18, v12

    .line 40
    .line 41
    move v12, v2

    .line 42
    move-object v2, v10

    .line 43
    move-object/from16 v10, v18

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    .line 56
    .line 57
    iget v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    .line 58
    .line 59
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:[B

    .line 60
    .line 61
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:Lkotlinx/coroutines/channels/Channel;

    .line 62
    .line 63
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v12, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v18, v12

    .line 71
    .line 72
    move v12, v2

    .line 73
    move-object v2, v10

    .line 74
    move-object/from16 v10, v18

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    .line 78
    .line 79
    iget v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    .line 80
    .line 81
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:[B

    .line 82
    .line 83
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:Lkotlinx/coroutines/channels/Channel;

    .line 84
    .line 85
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v12, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v13, p1

    .line 93
    .line 94
    check-cast v13, Lkotlinx/coroutines/channels/ChannelResult;

    .line 95
    .line 96
    iget-object v13, v13, Lkotlinx/coroutines/channels/ChannelResult;->a:Ljava/lang/Object;

    .line 97
    .line 98
    move-object/from16 v18, v12

    .line 99
    .line 100
    move v12, v2

    .line 101
    move-object v2, v10

    .line 102
    move-object/from16 v10, v18

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 111
    .line 112
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/Flow;

    .line 113
    .line 114
    array-length v9, v9

    .line 115
    if-nez v9, :cond_4

    .line 116
    .line 117
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-object v1

    .line 120
    :cond_4
    new-array v10, v9, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v10, v4}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 123
    .line 124
    .line 125
    const/4 v11, 0x6

    .line 126
    invoke-static {v9, v7, v11}, Lkotlinx/coroutines/channels/ChannelKt;->a(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 127
    .line 128
    .line 129
    move-result-object v16

    .line 130
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    .line 132
    invoke-direct {v15, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 133
    .line 134
    .line 135
    move v14, v3

    .line 136
    :goto_0
    if-ge v14, v9, :cond_5

    .line 137
    .line 138
    new-instance v12, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    .line 139
    .line 140
    iget-object v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->k:[Lkotlinx/coroutines/flow/Flow;

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    invoke-direct/range {v12 .. v17}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v12, v5}, Lkotlinx/coroutines/BuildersKt;->b(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v14, v14, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    new-array v2, v9, [B

    .line 154
    .line 155
    move v12, v3

    .line 156
    move-object/from16 v11, v16

    .line 157
    .line 158
    :cond_6
    :goto_1
    add-int/2addr v12, v8

    .line 159
    int-to-byte v12, v12

    .line 160
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:Lkotlinx/coroutines/channels/Channel;

    .line 163
    .line 164
    iput-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:[B

    .line 165
    .line 166
    iput v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    .line 167
    .line 168
    iput v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    .line 169
    .line 170
    iput v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    .line 171
    .line 172
    invoke-interface {v11, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->o(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    if-ne v13, v1, :cond_7

    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :cond_7
    :goto_2
    instance-of v14, v13, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 181
    .line 182
    if-nez v14, :cond_8

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_8
    move-object v13, v7

    .line 186
    :goto_3
    check-cast v13, Lkotlin/collections/IndexedValue;

    .line 187
    .line 188
    if-nez v13, :cond_9

    .line 189
    .line 190
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 191
    .line 192
    return-object v1

    .line 193
    :cond_9
    invoke-virtual {v13}, Lkotlin/collections/IndexedValue;->getIndex()I

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    aget-object v15, v10, v14

    .line 198
    .line 199
    invoke-virtual {v13}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    aput-object v13, v10, v14

    .line 204
    .line 205
    if-ne v15, v4, :cond_a

    .line 206
    .line 207
    add-int/lit8 v9, v9, -0x1

    .line 208
    .line 209
    :cond_a
    aget-byte v13, v2, v14

    .line 210
    .line 211
    if-eq v13, v12, :cond_c

    .line 212
    .line 213
    int-to-byte v13, v12

    .line 214
    aput-byte v13, v2, v14

    .line 215
    .line 216
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->g()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    instance-of v14, v13, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 221
    .line 222
    if-nez v14, :cond_b

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_b
    move-object v13, v7

    .line 226
    :goto_4
    check-cast v13, Lkotlin/collections/IndexedValue;

    .line 227
    .line 228
    if-nez v13, :cond_9

    .line 229
    .line 230
    :cond_c
    if-nez v9, :cond_6

    .line 231
    .line 232
    iget-object v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->l:Lkotlin/jvm/functions/Function0;

    .line 233
    .line 234
    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    check-cast v13, [Ljava/lang/Object;

    .line 239
    .line 240
    iget-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 241
    .line 242
    iget-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 243
    .line 244
    if-nez v13, :cond_d

    .line 245
    .line 246
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 247
    .line 248
    iput-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:Lkotlinx/coroutines/channels/Channel;

    .line 249
    .line 250
    iput-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:[B

    .line 251
    .line 252
    iput v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    .line 253
    .line 254
    iput v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    .line 255
    .line 256
    iput v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    .line 257
    .line 258
    invoke-interface {v15, v14, v10, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    if-ne v13, v1, :cond_6

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_d
    const/16 v6, 0xe

    .line 266
    .line 267
    invoke-static {v10, v13, v3, v6}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;[Ljava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->j:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->c:Lkotlinx/coroutines/channels/Channel;

    .line 273
    .line 274
    iput-object v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->f:[B

    .line 275
    .line 276
    iput v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->g:I

    .line 277
    .line 278
    iput v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->h:I

    .line 279
    .line 280
    iput v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->i:I

    .line 281
    .line 282
    invoke-interface {v15, v14, v13, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    if-ne v6, v1, :cond_e

    .line 287
    .line 288
    :goto_5
    return-object v1

    .line 289
    :cond_e
    :goto_6
    const/4 v6, 0x2

    .line 290
    goto/16 :goto_1
.end method
