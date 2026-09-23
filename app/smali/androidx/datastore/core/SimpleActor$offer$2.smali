.class final Landroidx/datastore/core/SimpleActor$offer$2;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.SimpleActor$offer$2"
    f = "SimpleActor.kt"
    i = {}
    l = {
        0x7a,
        0x7a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public c:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Landroidx/datastore/core/SimpleActor;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/SimpleActor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->g:Landroidx/datastore/core/SimpleActor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->g:Landroidx/datastore/core/SimpleActor;

    invoke-direct {p1, v0, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Landroidx/datastore/core/SimpleActor;Lkotlin/coroutines/Continuation;)V

    return-object p1
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
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/datastore/core/SimpleActor$offer$2;->g:Landroidx/datastore/core/SimpleActor;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/datastore/core/SimpleActor;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget v4, v1, Landroidx/datastore/core/SimpleActor$offer$2;->f:I

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x1

    .line 15
    if-eqz v4, :cond_2

    .line 16
    .line 17
    if-eq v4, v7, :cond_1

    .line 18
    .line 19
    if-ne v4, v6, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v16, v0

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    goto/16 :goto_e

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    iget-object v4, v1, Landroidx/datastore/core/SimpleActor$offer$2;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v16, v0

    .line 45
    .line 46
    move-object/from16 v0, p1

    .line 47
    .line 48
    :goto_0
    const/4 v5, 0x0

    .line 49
    goto/16 :goto_c

    .line 50
    .line 51
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-lez v4, :cond_18

    .line 59
    .line 60
    :goto_1
    iget-object v4, v0, Landroidx/datastore/core/SimpleActor;->a:Lkotlinx/coroutines/internal/ContextScope;

    .line 61
    .line 62
    iget-object v4, v4, Lkotlinx/coroutines/internal/ContextScope;->c:Lkotlin/coroutines/CoroutineContext;

    .line 63
    .line 64
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->b(Lkotlin/coroutines/CoroutineContext;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Landroidx/datastore/core/SimpleActor;->b:Lkotlin/jvm/functions/Function2;

    .line 68
    .line 69
    iget-object v8, v0, Landroidx/datastore/core/SimpleActor;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 70
    .line 71
    iput-object v4, v1, Landroidx/datastore/core/SimpleActor$offer$2;->c:Ljava/lang/Object;

    .line 72
    .line 73
    iput v7, v1, Landroidx/datastore/core/SimpleActor$offer$2;->f:I

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v14, Lkotlinx/coroutines/channels/BufferedChannel;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 79
    .line 80
    sget-object v15, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 81
    .line 82
    invoke-virtual {v15, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 87
    .line 88
    :goto_2
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->B()Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-nez v10, :cond_17

    .line 93
    .line 94
    invoke-virtual {v14, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    sget v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 99
    .line 100
    int-to-long v6, v10

    .line 101
    move-wide/from16 v16, v6

    .line 102
    .line 103
    div-long v5, v11, v16

    .line 104
    .line 105
    move-wide/from16 v18, v11

    .line 106
    .line 107
    rem-long v10, v18, v16

    .line 108
    .line 109
    long-to-int v10, v10

    .line 110
    iget-wide v11, v9, Lkotlinx/coroutines/internal/Segment;->g:J

    .line 111
    .line 112
    cmp-long v7, v11, v5

    .line 113
    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    invoke-virtual {v8, v5, v6, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->u(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-nez v5, :cond_4

    .line 121
    .line 122
    :cond_3
    :goto_3
    const/4 v6, 0x2

    .line 123
    const/4 v7, 0x1

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move-object v9, v5

    .line 126
    :cond_5
    const/4 v13, 0x0

    .line 127
    move-wide/from16 v11, v18

    .line 128
    .line 129
    invoke-virtual/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Lkotlinx/coroutines/internal/Symbol;

    .line 134
    .line 135
    const-string v7, "unexpected"

    .line 136
    .line 137
    if-eq v5, v6, :cond_16

    .line 138
    .line 139
    sget-object v13, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 140
    .line 141
    if-ne v5, v13, :cond_6

    .line 142
    .line 143
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->y()J

    .line 144
    .line 145
    .line 146
    move-result-wide v5

    .line 147
    cmp-long v5, v11, v5

    .line 148
    .line 149
    if-gez v5, :cond_3

    .line 150
    .line 151
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move-object/from16 v16, v0

    .line 156
    .line 157
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Lkotlinx/coroutines/internal/Symbol;

    .line 158
    .line 159
    if-ne v5, v0, :cond_11

    .line 160
    .line 161
    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    move-object v0, v13

    .line 170
    move-object v13, v5

    .line 171
    :try_start_0
    invoke-virtual/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    if-ne v5, v6, :cond_7

    .line 176
    .line 177
    invoke-virtual {v13, v9, v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->b(Lkotlinx/coroutines/internal/Segment;I)V

    .line 178
    .line 179
    .line 180
    :goto_4
    move-object v6, v4

    .line 181
    goto/16 :goto_9

    .line 182
    .line 183
    :catchall_0
    move-exception v0

    .line 184
    goto/16 :goto_a

    .line 185
    .line 186
    :cond_7
    if-ne v5, v0, :cond_10

    .line 187
    .line 188
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->y()J

    .line 189
    .line 190
    .line 191
    move-result-wide v5

    .line 192
    cmp-long v0, v11, v5

    .line 193
    .line 194
    if-gez v0, :cond_8

    .line 195
    .line 196
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 197
    .line 198
    .line 199
    :cond_8
    invoke-virtual {v15, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 204
    .line 205
    :goto_5
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->B()Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_9

    .line 210
    .line 211
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 212
    .line 213
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->w()Ljava/lang/Throwable;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v13, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    invoke-virtual {v14, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 230
    .line 231
    .line 232
    move-result-wide v11

    .line 233
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    .line 234
    .line 235
    int-to-long v5, v5

    .line 236
    div-long v9, v11, v5

    .line 237
    .line 238
    rem-long v5, v11, v5

    .line 239
    .line 240
    long-to-int v5, v5

    .line 241
    move-object v6, v4

    .line 242
    move v15, v5

    .line 243
    iget-wide v4, v0, Lkotlinx/coroutines/internal/Segment;->g:J

    .line 244
    .line 245
    cmp-long v4, v4, v9

    .line 246
    .line 247
    if-eqz v4, :cond_b

    .line 248
    .line 249
    invoke-virtual {v8, v9, v10, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->u(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    if-nez v4, :cond_a

    .line 254
    .line 255
    :goto_6
    move-object v4, v6

    .line 256
    goto :goto_5

    .line 257
    :cond_a
    move-object v9, v4

    .line 258
    :goto_7
    move v10, v15

    .line 259
    goto :goto_8

    .line 260
    :cond_b
    move-object v9, v0

    .line 261
    goto :goto_7

    .line 262
    :goto_8
    invoke-virtual/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    move-object v4, v9

    .line 267
    move v15, v10

    .line 268
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Lkotlinx/coroutines/internal/Symbol;

    .line 269
    .line 270
    if-ne v0, v5, :cond_c

    .line 271
    .line 272
    invoke-virtual {v13, v4, v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->b(Lkotlinx/coroutines/internal/Segment;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_c
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Lkotlinx/coroutines/internal/Symbol;

    .line 277
    .line 278
    if-ne v0, v5, :cond_e

    .line 279
    .line 280
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->y()J

    .line 281
    .line 282
    .line 283
    move-result-wide v9

    .line 284
    cmp-long v0, v11, v9

    .line 285
    .line 286
    if-gez v0, :cond_d

    .line 287
    .line 288
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 289
    .line 290
    .line 291
    :cond_d
    move-object v0, v4

    .line 292
    goto :goto_6

    .line 293
    :cond_e
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Lkotlinx/coroutines/internal/Symbol;

    .line 294
    .line 295
    if-eq v0, v5, :cond_f

    .line 296
    .line 297
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 298
    .line 299
    .line 300
    const/4 v4, 0x0

    .line 301
    invoke-virtual {v13, v0, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 302
    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 306
    .line 307
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0

    .line 311
    :cond_10
    move-object v6, v4

    .line 312
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 313
    .line 314
    .line 315
    const/4 v4, 0x0

    .line 316
    invoke-virtual {v13, v5, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .line 318
    .line 319
    :goto_9
    invoke-virtual {v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->q()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    if-ne v0, v4, :cond_12

    .line 328
    .line 329
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 330
    .line 331
    .line 332
    goto :goto_b

    .line 333
    :goto_a
    invoke-virtual {v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->z()V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_11
    move-object v6, v4

    .line 338
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->a()V

    .line 339
    .line 340
    .line 341
    move-object v0, v5

    .line 342
    :cond_12
    :goto_b
    if-ne v0, v3, :cond_13

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_13
    move-object v4, v6

    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :goto_c
    iput-object v5, v1, Landroidx/datastore/core/SimpleActor$offer$2;->c:Ljava/lang/Object;

    .line 349
    .line 350
    const/4 v6, 0x2

    .line 351
    iput v6, v1, Landroidx/datastore/core/SimpleActor$offer$2;->f:I

    .line 352
    .line 353
    invoke-interface {v4, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-ne v0, v3, :cond_14

    .line 358
    .line 359
    :goto_d
    return-object v3

    .line 360
    :cond_14
    :goto_e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_15

    .line 365
    .line 366
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 367
    .line 368
    return-object v0

    .line 369
    :cond_15
    move-object/from16 v0, v16

    .line 370
    .line 371
    const/4 v7, 0x1

    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 375
    .line 376
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :cond_17
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->w()Ljava/lang/Throwable;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    sget v2, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a:I

    .line 385
    .line 386
    throw v0

    .line 387
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 388
    .line 389
    const-string v2, "Check failed."

    .line 390
    .line 391
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0
.end method
