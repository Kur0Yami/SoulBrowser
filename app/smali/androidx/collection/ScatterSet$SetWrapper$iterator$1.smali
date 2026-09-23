.class final Landroidx/collection/ScatterSet$SetWrapper$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "Ljava/lang/Object;",
        ">;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlin/sequences/SequenceScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.collection.ScatterSet$SetWrapper$iterator$1"
    f = "ScatterSet.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1ef
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "k$iv",
        "m$iv$iv",
        "lastIndex$iv$iv",
        "i$iv$iv",
        "slot$iv$iv",
        "bitCount$iv$iv",
        "j$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "J$0",
        "I$2",
        "I$3"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSet$SetWrapper$iterator$1\n+ 2 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1100:1\n267#2,4:1101\n237#2,7:1105\n248#2,3:1113\n251#2,2:1117\n272#2,2:1119\n254#2,6:1121\n274#2:1127\n1826#3:1112\n1688#3:1116\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSet$SetWrapper$iterator$1\n*L\n494#1:1101,4\n494#1:1105,7\n494#1:1113,3\n494#1:1117,2\n494#1:1119,2\n494#1:1121,6\n494#1:1127\n494#1:1112\n494#1:1116\n*E\n"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/Object;

.field public f:[J

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public synthetic m:Ljava/lang/Object;


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->m:Ljava/lang/Object;

    .line 8
    .line 9
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    iget v2, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->l:I

    .line 8
    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_4

    .line 13
    .line 14
    iget v2, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->j:I

    .line 15
    .line 16
    iget v4, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->i:I

    .line 17
    .line 18
    iget-wide v5, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->k:J

    .line 19
    .line 20
    iget v7, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->h:I

    .line 21
    .line 22
    iget v8, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->g:I

    .line 23
    .line 24
    iget-object v9, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->f:[J

    .line 25
    .line 26
    iget-object v10, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->c:[Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v11, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->m:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v11, Lkotlin/sequences/SequenceScope;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const/16 v12, 0x8

    .line 36
    .line 37
    shr-long/2addr v5, v12

    .line 38
    add-int/2addr v2, v3

    .line 39
    :goto_0
    if-ge v2, v4, :cond_1

    .line 40
    .line 41
    const-wide/16 v12, 0xff

    .line 42
    .line 43
    and-long/2addr v12, v5

    .line 44
    const-wide/16 v14, 0x80

    .line 45
    .line 46
    cmp-long v12, v12, v14

    .line 47
    .line 48
    if-gez v12, :cond_0

    .line 49
    .line 50
    shl-int/lit8 v12, v7, 0x3

    .line 51
    .line 52
    add-int/2addr v12, v2

    .line 53
    aget-object v12, v10, v12

    .line 54
    .line 55
    iput-object v11, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->m:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v10, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->c:[Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v9, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->f:[J

    .line 60
    .line 61
    iput v8, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->g:I

    .line 62
    .line 63
    iput v7, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->h:I

    .line 64
    .line 65
    iput-wide v5, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->k:J

    .line 66
    .line 67
    iput v4, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->i:I

    .line 68
    .line 69
    iput v2, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->j:I

    .line 70
    .line 71
    iput v3, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->l:I

    .line 72
    .line 73
    invoke-virtual {v11, v12, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    if-ne v12, v1, :cond_0

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_1
    if-ne v4, v12, :cond_3

    .line 81
    .line 82
    :cond_2
    if-eq v7, v8, :cond_3

    .line 83
    .line 84
    add-int/lit8 v7, v7, 0x1

    .line 85
    .line 86
    aget-wide v5, v9, v7

    .line 87
    .line 88
    not-long v13, v5

    .line 89
    const/4 v2, 0x7

    .line 90
    shl-long/2addr v13, v2

    .line 91
    and-long/2addr v13, v5

    .line 92
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    and-long/2addr v13, v15

    .line 98
    cmp-long v2, v13, v15

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    sub-int v2, v7, v8

    .line 103
    .line 104
    not-int v2, v2

    .line 105
    ushr-int/lit8 v2, v2, 0x1f

    .line 106
    .line 107
    rsub-int/lit8 v4, v2, 0x8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Landroidx/collection/ScatterSet$SetWrapper$iterator$1;->m:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Lkotlin/sequences/SequenceScope;

    .line 128
    .line 129
    const/4 v1, 0x0

    .line 130
    throw v1
.end method
