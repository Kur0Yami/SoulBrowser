.class final Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;
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
        "-",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00050\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "K",
        "V",
        "Lkotlin/sequences/SequenceScope;",
        ""
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
    c = "androidx.collection.ScatterMap$MapWrapper$entries$1$iterator$1"
    f = "ScatterMap.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x2bd
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "m$iv",
        "lastIndex$iv",
        "i$iv",
        "slot$iv",
        "bitCount$iv",
        "j$iv"
    }
    s = {
        "L$0",
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
        "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n1826#3:1857\n1688#3:1861\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1\n*L\n699#1:1851,6\n699#1:1858,3\n699#1:1862,9\n699#1:1857\n699#1:1861\n*E\n"
    }
.end annotation


# instance fields
.field public c:Landroidx/collection/ScatterMap;

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
    new-instance v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->m:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->l:I

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
    iget v2, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->j:I

    .line 15
    .line 16
    iget v4, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->i:I

    .line 17
    .line 18
    iget-wide v5, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->k:J

    .line 19
    .line 20
    iget v7, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->h:I

    .line 21
    .line 22
    iget v8, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->g:I

    .line 23
    .line 24
    iget-object v9, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->f:[J

    .line 25
    .line 26
    iget-object v10, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->c:Landroidx/collection/ScatterMap;

    .line 27
    .line 28
    iget-object v11, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->m:Ljava/lang/Object;

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
    new-instance v13, Landroidx/collection/MapEntry;

    .line 54
    .line 55
    iget-object v14, v10, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v14, v14, v12

    .line 58
    .line 59
    iget-object v15, v10, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v12, v15, v12

    .line 62
    .line 63
    invoke-direct {v13, v14, v12}, Landroidx/collection/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v11, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->m:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v10, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->c:Landroidx/collection/ScatterMap;

    .line 69
    .line 70
    iput-object v9, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->f:[J

    .line 71
    .line 72
    iput v8, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->g:I

    .line 73
    .line 74
    iput v7, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->h:I

    .line 75
    .line 76
    iput-wide v5, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->k:J

    .line 77
    .line 78
    iput v4, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->i:I

    .line 79
    .line 80
    iput v2, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->j:I

    .line 81
    .line 82
    iput v3, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->l:I

    .line 83
    .line 84
    invoke-virtual {v11, v13, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    if-ne v12, v1, :cond_0

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_1
    if-ne v4, v12, :cond_3

    .line 92
    .line 93
    :cond_2
    if-eq v7, v8, :cond_3

    .line 94
    .line 95
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    aget-wide v5, v9, v7

    .line 98
    .line 99
    not-long v13, v5

    .line 100
    const/4 v2, 0x7

    .line 101
    shl-long/2addr v13, v2

    .line 102
    and-long/2addr v13, v5

    .line 103
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    and-long/2addr v13, v15

    .line 109
    cmp-long v2, v13, v15

    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    sub-int v2, v7, v8

    .line 114
    .line 115
    not-int v2, v2

    .line 116
    ushr-int/lit8 v2, v2, 0x1f

    .line 117
    .line 118
    rsub-int/lit8 v4, v2, 0x8

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 128
    .line 129
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Landroidx/collection/ScatterMap$MapWrapper$entries$1$iterator$1;->m:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Lkotlin/sequences/SequenceScope;

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    throw v1
.end method
