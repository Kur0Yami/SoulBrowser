.class final Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.TickerChannelsKt"
    f = "TickerChannels.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x66,
        0x68,
        0x69
    }
    m = "fixedDelayTicker"
    n = {
        "channel",
        "delayMillis",
        "channel",
        "delayMillis",
        "channel",
        "delayMillis"
    }
    s = {
        "L$0",
        "J$0",
        "L$0",
        "J$0",
        "L$0",
        "J$0"
    }
.end annotation


# instance fields
.field public c:Lkotlinx/coroutines/channels/SendChannel;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 9
    .line 10
    and-int v1, p1, v0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    iput p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 16
    .line 17
    move-object p1, p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->f:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v2, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    const/4 v6, 0x2

    .line 36
    const/4 v7, 0x1

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v7, :cond_3

    .line 40
    .line 41
    if-eq v2, v6, :cond_2

    .line 42
    .line 43
    if-ne v2, v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object v2, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->c:Lkotlinx/coroutines/channels/SendChannel;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_1
    iget-object v2, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->c:Lkotlinx/coroutines/channels/SendChannel;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    iput-object v2, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->c:Lkotlinx/coroutines/channels/SendChannel;

    .line 71
    .line 72
    iput v7, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 73
    .line 74
    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-ne v0, v1, :cond_5

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    iput-object v2, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->c:Lkotlinx/coroutines/channels/SendChannel;

    .line 84
    .line 85
    iput v6, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 86
    .line 87
    invoke-interface {v2, v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-ne v0, v1, :cond_6

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    :goto_3
    iput-object v2, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->c:Lkotlinx/coroutines/channels/SendChannel;

    .line 95
    .line 96
    iput v5, p1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->g:I

    .line 97
    .line 98
    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-ne v0, v1, :cond_5

    .line 103
    .line 104
    :goto_4
    return-object v1
.end method
