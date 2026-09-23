.class final Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;
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
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x50,
        0x54,
        0x5a,
        0x5c
    }
    m = "fixedPeriodTicker"
    n = {
        "channel",
        "delayMillis",
        "deadline",
        "channel",
        "deadline",
        "delayNs",
        "channel",
        "deadline",
        "delayNs",
        "channel",
        "deadline",
        "delayNs"
    }
    s = {
        "L$0",
        "J$0",
        "J$1",
        "L$0",
        "J$0",
        "J$1",
        "L$0",
        "J$0",
        "J$1",
        "L$0",
        "J$0",
        "J$1"
    }
.end annotation


# instance fields
.field public c:J

.field public f:J

.field public g:Lkotlinx/coroutines/channels/SendChannel;

.field public synthetic h:Ljava/lang/Object;

.field public i:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 8
    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    or-int/2addr v1, v2

    .line 12
    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 13
    .line 14
    and-int v3, v1, v2

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    sub-int/2addr v1, v2

    .line 19
    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->h:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 35
    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    const/4 v8, 0x3

    .line 40
    const/4 v9, 0x2

    .line 41
    const/4 v10, 0x1

    .line 42
    if-eqz v4, :cond_6

    .line 43
    .line 44
    if-eq v4, v10, :cond_5

    .line 45
    .line 46
    if-eq v4, v9, :cond_4

    .line 47
    .line 48
    if-eq v4, v8, :cond_2

    .line 49
    .line 50
    if-ne v4, v7, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_2
    :goto_1
    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 62
    .line 63
    iget-wide v12, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 64
    .line 65
    iget-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    move-wide/from16 v20, v12

    .line 71
    .line 72
    move-wide v12, v10

    .line 73
    move-wide/from16 v10, v20

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 77
    .line 78
    iget-wide v12, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 79
    .line 80
    iget-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 81
    .line 82
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    iget-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 87
    .line 88
    iget-wide v12, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 89
    .line 90
    iget-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v11

    .line 103
    invoke-static {v5, v6}, Lkotlinx/coroutines/EventLoop_commonKt;->a(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v13

    .line 107
    add-long/2addr v11, v13

    .line 108
    const/4 v4, 0x0

    .line 109
    iput-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 110
    .line 111
    iput-wide v5, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 112
    .line 113
    iput-wide v11, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 114
    .line 115
    iput v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 116
    .line 117
    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-ne v2, v3, :cond_7

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_7
    move-wide v10, v11

    .line 125
    move-wide v12, v5

    .line 126
    :goto_2
    invoke-static {v12, v13}, Lkotlinx/coroutines/EventLoop_commonKt;->a(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v12

    .line 130
    :goto_3
    add-long/2addr v10, v12

    .line 131
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    iput-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 134
    .line 135
    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 136
    .line 137
    iput-wide v12, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 138
    .line 139
    iput v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 140
    .line 141
    invoke-interface {v4, v2, v1}, Lkotlinx/coroutines/channels/SendChannel;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-ne v2, v3, :cond_8

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_8
    move-wide/from16 v20, v12

    .line 149
    .line 150
    move-wide v12, v10

    .line 151
    move-wide/from16 v10, v20

    .line 152
    .line 153
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v14

    .line 157
    sub-long v16, v12, v14

    .line 158
    .line 159
    invoke-static/range {v16 .. v17}, Lkotlin/ranges/RangesKt;->a(J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v16

    .line 163
    cmp-long v2, v16, v5

    .line 164
    .line 165
    const-wide/32 v18, 0xf4240

    .line 166
    .line 167
    .line 168
    if-nez v2, :cond_a

    .line 169
    .line 170
    cmp-long v2, v10, v5

    .line 171
    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    sub-long v12, v14, v12

    .line 175
    .line 176
    rem-long/2addr v12, v10

    .line 177
    sub-long v12, v10, v12

    .line 178
    .line 179
    add-long/2addr v14, v12

    .line 180
    div-long v12, v12, v18

    .line 181
    .line 182
    iput-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 183
    .line 184
    iput-wide v14, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 185
    .line 186
    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 187
    .line 188
    iput v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 189
    .line 190
    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-ne v2, v3, :cond_9

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_9
    move-wide v12, v10

    .line 198
    move-wide v10, v14

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    div-long v14, v16, v18

    .line 201
    .line 202
    iput-object v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->g:Lkotlinx/coroutines/channels/SendChannel;

    .line 203
    .line 204
    iput-wide v12, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->c:J

    .line 205
    .line 206
    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->f:J

    .line 207
    .line 208
    iput v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->i:I

    .line 209
    .line 210
    invoke-static {v14, v15, v1}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-ne v2, v3, :cond_3

    .line 215
    .line 216
    :goto_5
    return-object v3
.end method
