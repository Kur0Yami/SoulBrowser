.class public Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;,
        Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0008\u0012\u0004\u0012\u00028\u00000\u0006:\u0001\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "T",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;",
        "Emitter",
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
        "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,741:1\n24#2,4:742\n24#2,4:748\n24#2,4:770\n24#2,4:777\n24#2,4:789\n24#2,4:803\n24#2,4:817\n16#3:746\n16#3:752\n16#3:774\n16#3:781\n16#3:793\n16#3:807\n16#3:821\n326#4:747\n1#5:753\n90#6,2:754\n92#6,2:757\n94#6:760\n90#6,2:782\n92#6,2:785\n94#6:788\n90#6,2:810\n92#6,2:813\n94#6:816\n13309#7:756\n13310#7:759\n13309#7:784\n13310#7:787\n13309#7:812\n13310#7:815\n310#8,9:761\n319#8,2:775\n310#8,9:794\n319#8,2:808\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n361#1:742,4\n401#1:748,4\n495#1:770,4\n516#1:777,4\n636#1:789,4\n671#1:803,4\n699#1:817,4\n361#1:746\n401#1:752\n495#1:774\n516#1:781\n636#1:793\n671#1:807\n699#1:821\n383#1:747\n463#1:754,2\n463#1:757,2\n463#1:760\n539#1:782,2\n539#1:785,2\n539#1:788\n686#1:810,2\n686#1:813,2\n686#1:816\n463#1:756\n463#1:759\n539#1:784\n539#1:787\n686#1:812\n686#1:815\n493#1:761,9\n493#1:775,2\n670#1:794,9\n670#1:808,2\n*E\n"
    }
.end annotation


# instance fields
.field public h:[Ljava/lang/Object;

.field public i:J

.field public j:J

.field public k:I

.field public l:I


# direct methods
.method public static h(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->k:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->h:Lkotlinx/coroutines/Job;

    .line 45
    .line 46
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 47
    .line 48
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->f:Lkotlinx/coroutines/flow/FlowCollector;

    .line 49
    .line 50
    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 51
    .line 52
    :goto_1
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->h:Lkotlinx/coroutines/Job;

    .line 68
    .line 69
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 70
    .line 71
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->f:Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    .line 73
    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_2
    move-object p2, v2

    .line 77
    move-object v2, p0

    .line 78
    move-object p0, v5

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 81
    .line 82
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->f:Lkotlinx/coroutines/flow/FlowCollector;

    .line 83
    .line 84
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 85
    .line 86
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    .line 89
    move-object p2, p0

    .line 90
    move-object p0, v2

    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    move-object v5, v2

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->c()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 104
    .line 105
    :try_start_2
    instance-of v2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    move-object v2, p1

    .line 110
    check-cast v2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 111
    .line 112
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 113
    .line 114
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->f:Lkotlinx/coroutines/flow/FlowCollector;

    .line 115
    .line 116
    iput-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 117
    .line 118
    iput v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->k:I

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    if-ne v2, v1, :cond_5

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :catchall_2
    move-exception p1

    .line 128
    move-object v5, p0

    .line 129
    move-object p0, p1

    .line 130
    move-object p1, p2

    .line 131
    goto :goto_7

    .line 132
    :cond_5
    move-object v7, p2

    .line 133
    move-object p2, p1

    .line 134
    move-object p1, v7

    .line 135
    :goto_3
    :try_start_3
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    sget-object v5, Lkotlinx/coroutines/Job$Key;->c:Lkotlinx/coroutines/Job$Key;

    .line 140
    .line 141
    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 146
    .line 147
    :cond_6
    :goto_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->q(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 152
    .line 153
    if-ne v5, v6, :cond_7

    .line 154
    .line 155
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 156
    .line 157
    iput-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->f:Lkotlinx/coroutines/flow/FlowCollector;

    .line 158
    .line 159
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 160
    .line 161
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->h:Lkotlinx/coroutines/Job;

    .line 162
    .line 163
    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->k:I

    .line 164
    .line 165
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->g(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-ne v5, v1, :cond_6

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :catchall_3
    move-exception p2

    .line 173
    move-object v5, p0

    .line 174
    move-object p0, p2

    .line 175
    goto :goto_7

    .line 176
    :cond_7
    if-eqz v2, :cond_9

    .line 177
    .line 178
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v6, :cond_8

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_8
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->j()Ljava/util/concurrent/CancellationException;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    throw p2

    .line 190
    :cond_9
    :goto_5
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 191
    .line 192
    iput-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->f:Lkotlinx/coroutines/flow/FlowCollector;

    .line 193
    .line 194
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->g:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 195
    .line 196
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->h:Lkotlinx/coroutines/Job;

    .line 197
    .line 198
    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->k:I

    .line 199
    .line 200
    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 204
    if-ne v5, v1, :cond_6

    .line 205
    .line 206
    :goto_6
    return-object v1

    .line 207
    :goto_7
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->h(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->n(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public final d()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 9
    .line 10
    return-object v0
.end method

.method public final e()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 3
    .line 4
    return-object v0
.end method

.method public final g(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->r()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    iput-object v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->q()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-ne p1, v0, :cond_1

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-ne p1, p2, :cond_2

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final i()V
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 28
    .line 29
    cmp-long v2, v2, v0

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 34
    .line 35
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 36
    .line 37
    cmp-long v2, v2, v0

    .line 38
    .line 39
    if-gez v2, :cond_3

    .line 40
    .line 41
    iget v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f:I

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->c:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    array-length v3, v2

    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_0
    if-ge v4, v3, :cond_2

    .line 52
    .line 53
    aget-object v5, v2, v4

    .line 54
    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 58
    .line 59
    iget-wide v6, v5, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 60
    .line 61
    const-wide/16 v8, 0x0

    .line 62
    .line 63
    cmp-long v8, v6, v8

    .line 64
    .line 65
    if-ltz v8, :cond_1

    .line 66
    .line 67
    cmp-long v6, v6, v0

    .line 68
    .line 69
    if-gez v6, :cond_1

    .line 70
    .line 71
    iput-wide v0, v5, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 72
    .line 73
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->m([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v3, v1

    .line 19
    if-lt v0, v3, :cond_1

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    mul-int/2addr v3, v2

    .line 23
    invoke-virtual {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->m([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    int-to-long v4, v0

    .line 32
    add-long/2addr v2, v4

    .line 33
    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f:I

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->c:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_3

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 19
    .line 20
    iget-object v5, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    cmp-long v6, v6, v8

    .line 32
    .line 33
    if-ltz v6, :cond_2

    .line 34
    .line 35
    array-length v6, p1

    .line 36
    if-lt v0, v6, :cond_1

    .line 37
    .line 38
    array-length v6, p1

    .line 39
    const/4 v7, 0x2

    .line 40
    mul-int/2addr v6, v7

    .line 41
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v6, "copyOf(...)"

    .line 50
    .line 51
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    move-object v6, p1

    .line 55
    check-cast v6, [Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    add-int/lit8 v7, v0, 0x1

    .line 58
    .line 59
    aput-object v5, v6, v0

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-object v0, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 63
    .line 64
    move v0, v7

    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    check-cast p1, [Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    return-object p1
.end method

.method public final l()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 2
    .line 3
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final m([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7

    .line 1
    if-lez p3, :cond_2

    .line 2
    .line 3
    new-array p3, p3, [Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, p2, :cond_1

    .line 16
    .line 17
    int-to-long v3, v2

    .line 18
    add-long/2addr v3, v0

    .line 19
    long-to-int v5, v3

    .line 20
    array-length v6, p1

    .line 21
    add-int/lit8 v6, v6, -0x1

    .line 22
    .line 23
    and-int/2addr v5, v6

    .line 24
    aget-object v5, p1, v5

    .line 25
    .line 26
    invoke-static {p3, v3, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-object p3

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p2, "Buffer size overflow"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final n(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->o(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    .line 22
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f:I

    .line 2
    .line 3
    const/4 v9, 0x1

    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 10
    .line 11
    add-int/2addr v1, v9

    .line 12
    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 13
    .line 14
    if-le v1, v9, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->i()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 24
    .line 25
    int-to-long v3, v3

    .line 26
    add-long/2addr v1, v3

    .line 27
    iput-wide v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 28
    .line 29
    return v9

    .line 30
    :cond_1
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 31
    .line 32
    const v2, 0x7fffffff

    .line 33
    .line 34
    .line 35
    if-lt v1, v2, :cond_2

    .line 36
    .line 37
    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 38
    .line 39
    iget-wide v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 40
    .line 41
    cmp-long v1, v3, v5

    .line 42
    .line 43
    if-gtz v1, :cond_2

    .line 44
    .line 45
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 46
    .line 47
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->j(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 51
    .line 52
    add-int/2addr v1, v9

    .line 53
    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 54
    .line 55
    if-le v1, v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->i()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 65
    .line 66
    int-to-long v3, v3

    .line 67
    add-long/2addr v1, v3

    .line 68
    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 69
    .line 70
    sub-long/2addr v1, v3

    .line 71
    long-to-int v1, v1

    .line 72
    if-le v1, v9, :cond_4

    .line 73
    .line 74
    const-wide/16 v1, 0x1

    .line 75
    .line 76
    add-long/2addr v1, v3

    .line 77
    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 78
    .line 79
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    iget v7, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 84
    .line 85
    int-to-long v7, v7

    .line 86
    add-long/2addr v5, v7

    .line 87
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    iget v10, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 92
    .line 93
    int-to-long v10, v10

    .line 94
    add-long/2addr v7, v10

    .line 95
    iget v10, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 96
    .line 97
    int-to-long v10, v10

    .line 98
    add-long/2addr v7, v10

    .line 99
    move-object v0, p0

    .line 100
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->r(JJJJ)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return v9
.end method

.method public final p(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 8
    .line 9
    int-to-long v4, p1

    .line 10
    add-long/2addr v2, v4

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    return-wide v0
.end method

.method public final q(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-gez v3, :cond_0

    .line 13
    .line 14
    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 20
    .line 21
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :cond_1
    const-wide/16 v5, 0x1

    .line 36
    .line 37
    add-long/2addr v1, v5

    .line 38
    iput-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 39
    .line 40
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->s(J)[Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    move-object v7, v0

    .line 45
    move-object v0, p1

    .line 46
    move-object p1, v7

    .line 47
    :goto_0
    monitor-exit p0

    .line 48
    array-length v1, v0

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_1
    if-ge v2, v1, :cond_3

    .line 51
    .line 52
    aget-object v3, v0, v2

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 57
    .line 58
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 59
    .line 60
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return-object p1

    .line 71
    :goto_2
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final r(JJJJ)V
    .locals 6

    .line 1
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :goto_0
    cmp-long v4, v2, v0

    .line 10
    .line 11
    if-gez v4, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v4, v2, v3, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v4, 0x1

    .line 23
    .line 24
    add-long/2addr v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 27
    .line 28
    iput-wide p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 29
    .line 30
    sub-long p1, p5, v0

    .line 31
    .line 32
    long-to-int p1, p1

    .line 33
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 34
    .line 35
    sub-long/2addr p7, p5

    .line 36
    long-to-int p1, p7

    .line 37
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 38
    .line 39
    return-void
.end method

.method public final s(J)[Lkotlin/coroutines/Continuation;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 4
    .line 5
    cmp-long v1, p1, v1

    .line 6
    .line 7
    sget-object v2, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 17
    .line 18
    int-to-long v5, v1

    .line 19
    add-long/2addr v5, v3

    .line 20
    iget v1, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f:I

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->c:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    array-length v8, v1

    .line 30
    move v9, v7

    .line 31
    :goto_0
    if-ge v9, v8, :cond_2

    .line 32
    .line 33
    aget-object v10, v1, v9

    .line 34
    .line 35
    if-eqz v10, :cond_1

    .line 36
    .line 37
    check-cast v10, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 38
    .line 39
    iget-wide v10, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 40
    .line 41
    const-wide/16 v12, 0x0

    .line 42
    .line 43
    cmp-long v12, v10, v12

    .line 44
    .line 45
    if-ltz v12, :cond_1

    .line 46
    .line 47
    cmp-long v12, v10, v5

    .line 48
    .line 49
    if-gez v12, :cond_1

    .line 50
    .line 51
    move-wide v5, v10

    .line 52
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-wide v8, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->j:J

    .line 56
    .line 57
    cmp-long v1, v5, v8

    .line 58
    .line 59
    if-gtz v1, :cond_3

    .line 60
    .line 61
    :goto_1
    return-object v2

    .line 62
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 67
    .line 68
    int-to-long v10, v1

    .line 69
    add-long/2addr v8, v10

    .line 70
    iget v1, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f:I

    .line 71
    .line 72
    if-lez v1, :cond_4

    .line 73
    .line 74
    sub-long v10, v8, v5

    .line 75
    .line 76
    long-to-int v1, v10

    .line 77
    iget v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 78
    .line 79
    const v11, 0x7fffffff

    .line 80
    .line 81
    .line 82
    sub-int/2addr v11, v1

    .line 83
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 89
    .line 90
    :goto_2
    iget v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 91
    .line 92
    int-to-long v10, v10

    .line 93
    add-long/2addr v10, v8

    .line 94
    if-lez v1, :cond_8

    .line 95
    .line 96
    new-array v2, v1, [Lkotlin/coroutines/Continuation;

    .line 97
    .line 98
    iget-object v12, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 99
    .line 100
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-wide v13, v8

    .line 104
    :goto_3
    cmp-long v15, v8, v10

    .line 105
    .line 106
    if-gez v15, :cond_7

    .line 107
    .line 108
    invoke-static {v12, v8, v9}, Lkotlinx/coroutines/flow/SharedFlowKt;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v15

    .line 112
    move-object/from16 p1, v2

    .line 113
    .line 114
    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 115
    .line 116
    const-wide/16 v16, 0x1

    .line 117
    .line 118
    move-wide/from16 v18, v3

    .line 119
    .line 120
    if-eq v15, v2, :cond_6

    .line 121
    .line 122
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    .line 123
    .line 124
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v15, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 128
    .line 129
    add-int/lit8 v3, v7, 0x1

    .line 130
    .line 131
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    aput-object v4, p1, v7

    .line 136
    .line 137
    invoke-static {v12, v8, v9, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-static {v12, v13, v14, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    add-long v13, v13, v16

    .line 145
    .line 146
    if-ge v3, v1, :cond_5

    .line 147
    .line 148
    move v7, v3

    .line 149
    goto :goto_5

    .line 150
    :cond_5
    :goto_4
    move-object/from16 v9, p1

    .line 151
    .line 152
    move-wide v1, v5

    .line 153
    move-wide v5, v13

    .line 154
    goto :goto_6

    .line 155
    :cond_6
    :goto_5
    add-long v8, v8, v16

    .line 156
    .line 157
    move-object/from16 v2, p1

    .line 158
    .line 159
    move-wide/from16 v3, v18

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    move-object/from16 p1, v2

    .line 163
    .line 164
    move-wide/from16 v18, v3

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    move-wide/from16 v18, v3

    .line 168
    .line 169
    move-wide/from16 v20, v8

    .line 170
    .line 171
    move-object v9, v2

    .line 172
    move-wide v1, v5

    .line 173
    move-wide/from16 v5, v20

    .line 174
    .line 175
    :goto_6
    sub-long v3, v5, v18

    .line 176
    .line 177
    long-to-int v3, v3

    .line 178
    iget v4, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->f:I

    .line 179
    .line 180
    if-nez v4, :cond_9

    .line 181
    .line 182
    move-wide v1, v5

    .line 183
    :cond_9
    iget-wide v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->i:J

    .line 184
    .line 185
    const/4 v4, 0x1

    .line 186
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    int-to-long v3, v3

    .line 191
    sub-long v3, v5, v3

    .line 192
    .line 193
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v3

    .line 197
    move-wide v7, v3

    .line 198
    move-wide v3, v1

    .line 199
    move-wide v1, v7

    .line 200
    move-wide v7, v10

    .line 201
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->r(JJJJ)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->h:[Ljava/lang/Object;

    .line 205
    .line 206
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :goto_7
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 210
    .line 211
    if-lez v2, :cond_a

    .line 212
    .line 213
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    iget v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 218
    .line 219
    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 220
    .line 221
    add-int/2addr v4, v5

    .line 222
    int-to-long v4, v4

    .line 223
    add-long/2addr v2, v4

    .line 224
    const-wide/16 v4, 0x1

    .line 225
    .line 226
    sub-long/2addr v2, v4

    .line 227
    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    sget-object v3, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 232
    .line 233
    if-ne v2, v3, :cond_a

    .line 234
    .line 235
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 236
    .line 237
    add-int/lit8 v2, v2, -0x1

    .line 238
    .line 239
    iput v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 240
    .line 241
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    iget v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->k:I

    .line 246
    .line 247
    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->l:I

    .line 248
    .line 249
    add-int/2addr v4, v5

    .line 250
    int-to-long v4, v4

    .line 251
    add-long/2addr v2, v4

    .line 252
    const/4 v4, 0x0

    .line 253
    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_a
    array-length v1, v9

    .line 258
    if-nez v1, :cond_b

    .line 259
    .line 260
    return-object v9

    .line 261
    :cond_b
    invoke-virtual {v0, v9}, Lkotlinx/coroutines/flow/SharedFlowImpl;->k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    return-object v1
.end method
