.class final Lkotlinx/coroutines/AwaitKt$joinAll$1;
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
    c = "kotlinx.coroutines.AwaitKt"
    f = "Await.kt"
    i = {
        0x0
    }
    l = {
        0x2f
    }
    m = "joinAll"
    n = {
        "$this$forEach$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/Object;

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public i:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget v0, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->i:I

    .line 4
    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    iput v0, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->i:I

    .line 10
    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->i:I

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    iget v1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->g:I

    .line 23
    .line 24
    iget v3, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->f:I

    .line 25
    .line 26
    iget-object v4, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->c:[Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, [Lkotlinx/coroutines/Job;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/2addr v3, v2

    .line 34
    if-ge v3, v1, :cond_1

    .line 35
    .line 36
    aget-object p1, v4, v3

    .line 37
    .line 38
    iput-object v4, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->c:[Ljava/lang/Object;

    .line 39
    .line 40
    iput v3, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->f:I

    .line 41
    .line 42
    iput v1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->g:I

    .line 43
    .line 44
    iput v2, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->i:I

    .line 45
    .line 46
    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_0

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    throw p1
.end method
