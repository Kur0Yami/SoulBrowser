.class public final Landroidx/datastore/core/SingleProcessDataStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/DataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/SingleProcessDataStore$Message;,
        Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;,
        Landroidx/datastore/core/SingleProcessDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/DataStore<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0003\u0003\u0004\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/datastore/core/SingleProcessDataStore;",
        "T",
        "Landroidx/datastore/core/DataStore;",
        "Companion",
        "Message",
        "UncloseableOutputStream",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final i:Ljava/util/LinkedHashSet;

.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field public final b:Landroidx/datastore/core/CorruptionHandler;

.field public final c:Lkotlinx/coroutines/flow/Flow;

.field public final d:Ljava/lang/String;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public g:Ljava/util/List;

.field public final h:Landroidx/datastore/core/SimpleActor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->i:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->j:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxz;->a:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 2
    .line 3
    const-string v1, "produceFile"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "serializer"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "initTasksList"

    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "corruptionHandler"

    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "scope"

    .line 24
    .line 25
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->a:Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    iput-object p3, p0, Landroidx/datastore/core/SingleProcessDataStore;->b:Landroidx/datastore/core/CorruptionHandler;

    .line 34
    .line 35
    new-instance p1, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 36
    .line 37
    const/4 p3, 0x0

    .line 38
    invoke-direct {p1, p0, p3}, Landroidx/datastore/core/SingleProcessDataStore$data$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->e(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->c:Lkotlinx/coroutines/flow/Flow;

    .line 46
    .line 47
    const-string p1, ".tmp"

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->d:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p1, Landroidx/datastore/core/SingleProcessDataStore$file$2;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Landroidx/datastore/core/SingleProcessDataStore$file$2;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->e:Lkotlin/Lazy;

    .line 61
    .line 62
    sget-object p1, Landroidx/datastore/core/UnInitialized;->a:Landroidx/datastore/core/UnInitialized;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->g:Ljava/util/List;

    .line 75
    .line 76
    new-instance p1, Landroidx/datastore/core/SimpleActor;

    .line 77
    .line 78
    new-instance p2, Landroidx/datastore/core/SingleProcessDataStore$actor$1;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Landroidx/datastore/core/SingleProcessDataStore$actor$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Landroidx/datastore/core/SingleProcessDataStore$actor$2;->c:Landroidx/datastore/core/SingleProcessDataStore$actor$2;

    .line 84
    .line 85
    new-instance v1, Landroidx/datastore/core/SingleProcessDataStore$actor$3;

    .line 86
    .line 87
    invoke-direct {v1, p0, p3}, Landroidx/datastore/core/SingleProcessDataStore$actor$3;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p4, p2, v0, v1}, Landroidx/datastore/core/SimpleActor;-><init>(Lkotlinx/coroutines/internal/ContextScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->h:Landroidx/datastore/core/SimpleActor;

    .line 94
    .line 95
    return-void
.end method

.method public static final b(Landroidx/datastore/core/SingleProcessDataStore;Landroidx/datastore/core/SingleProcessDataStore$Message$Update;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:I

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
    if-eq v2, v5, :cond_1

    .line 39
    .line 40
    if-eq v2, v4, :cond_3

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    :cond_1
    iget-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_3
    iget-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->g:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    .line 67
    .line 68
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->f:Landroidx/datastore/core/SingleProcessDataStore;

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    .line 73
    .line 74
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    move-object p2, p0

    .line 78
    move-object p0, p1

    .line 79
    move-object p1, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 85
    .line 86
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 87
    .line 88
    iget-object v2, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 89
    .line 90
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroidx/datastore/core/State;

    .line 95
    .line 96
    instance-of v6, v2, Landroidx/datastore/core/Data;

    .line 97
    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    iget-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->a:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 101
    .line 102
    iget-object p1, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->d:Lkotlin/coroutines/CoroutineContext;

    .line 103
    .line 104
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->c:Ljava/lang/Object;

    .line 105
    .line 106
    iput v5, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:I

    .line 107
    .line 108
    invoke-virtual {p0, p1, v0, v2}, Landroidx/datastore/core/SingleProcessDataStore;->i(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-ne p0, v1, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move-object v7, p2

    .line 116
    move-object p2, p0

    .line 117
    move-object p0, v7

    .line 118
    goto :goto_4

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    move-object p0, p2

    .line 121
    goto :goto_5

    .line 122
    :cond_6
    instance-of v6, v2, Landroidx/datastore/core/ReadException;

    .line 123
    .line 124
    if-eqz v6, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    instance-of v5, v2, Landroidx/datastore/core/UnInitialized;

    .line 128
    .line 129
    :goto_1
    if-eqz v5, :cond_a

    .line 130
    .line 131
    iget-object v5, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->c:Landroidx/datastore/core/State;

    .line 132
    .line 133
    if-ne v2, v5, :cond_9

    .line 134
    .line 135
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->c:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->f:Landroidx/datastore/core/SingleProcessDataStore;

    .line 138
    .line 139
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->g:Ljava/lang/Object;

    .line 140
    .line 141
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:I

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-ne v2, v1, :cond_8

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_8
    :goto_2
    iget-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->a:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 151
    .line 152
    iget-object p1, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->d:Lkotlin/coroutines/CoroutineContext;

    .line 153
    .line 154
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->c:Ljava/lang/Object;

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    iput-object v4, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->f:Landroidx/datastore/core/SingleProcessDataStore;

    .line 158
    .line 159
    iput-object v4, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->g:Ljava/lang/Object;

    .line 160
    .line 161
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->j:I

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0, v2}, Landroidx/datastore/core/SingleProcessDataStore;->i(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    if-ne p0, v1, :cond_5

    .line 168
    .line 169
    :goto_3
    return-object v1

    .line 170
    :goto_4
    :try_start_3
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    goto :goto_6

    .line 175
    :cond_9
    :try_start_4
    check-cast v2, Landroidx/datastore/core/ReadException;

    .line 176
    .line 177
    iget-object p0, v2, Landroidx/datastore/core/ReadException;->a:Ljava/lang/Throwable;

    .line 178
    .line 179
    throw p0

    .line 180
    :cond_a
    instance-of p0, v2, Landroidx/datastore/core/Final;

    .line 181
    .line 182
    if-eqz p0, :cond_b

    .line 183
    .line 184
    check-cast v2, Landroidx/datastore/core/Final;

    .line 185
    .line 186
    iget-object p0, v2, Landroidx/datastore/core/Final;->a:Ljava/lang/Throwable;

    .line 187
    .line 188
    throw p0

    .line 189
    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 190
    .line 191
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 196
    .line 197
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    if-nez p2, :cond_c

    .line 210
    .line 211
    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->z(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_c
    invoke-interface {p0, p2}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Throwable;)Z

    .line 216
    .line 217
    .line 218
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 219
    .line 220
    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->a()Lkotlinx/coroutines/CompletableDeferred;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 6
    .line 7
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/datastore/core/State;

    .line 12
    .line 13
    new-instance v2, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    .line 14
    .line 15
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, p1, v0, v1, v3}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CompletableDeferred;Landroidx/datastore/core/State;Lkotlin/coroutines/CoroutineContext;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->h:Landroidx/datastore/core/SimpleActor;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroidx/datastore/core/SimpleActor;->a(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p2}, Lkotlinx/coroutines/Deferred;->A(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public final c()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->h:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 48
    .line 49
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->g:Ljava/io/Serializable;

    .line 50
    .line 51
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 52
    .line 53
    iget-object v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/util/Iterator;

    .line 73
    .line 74
    iget-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->i:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 75
    .line 76
    iget-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->h:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 79
    .line 80
    iget-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->g:Ljava/io/Serializable;

    .line 81
    .line 82
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 83
    .line 84
    iget-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v10, Lkotlinx/coroutines/sync/Mutex;

    .line 87
    .line 88
    iget-object v11, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_3
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->h:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 98
    .line 99
    iget-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->g:Ljava/io/Serializable;

    .line 100
    .line 101
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 102
    .line 103
    iget-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    .line 106
    .line 107
    iget-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 117
    .line 118
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v7, Landroidx/datastore/core/UnInitialized;->a:Landroidx/datastore/core/UnInitialized;

    .line 123
    .line 124
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    instance-of p1, p1, Landroidx/datastore/core/ReadException;

    .line 135
    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    const-string v0, "Check failed."

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_6
    :goto_1
    new-instance v8, Lkotlinx/coroutines/sync/MutexImpl;

    .line 148
    .line 149
    invoke-direct {v8}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 153
    .line 154
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 158
    .line 159
    iput-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->g:Ljava/io/Serializable;

    .line 162
    .line 163
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->h:Ljava/lang/Object;

    .line 164
    .line 165
    iput v5, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-ne p1, v1, :cond_7

    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_7
    move-object v9, p0

    .line 176
    move-object v7, v2

    .line 177
    :goto_2
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 178
    .line 179
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 180
    .line 181
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v2, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 185
    .line 186
    invoke-direct {v2, v8, p1, v7, v9}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;-><init>(Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 187
    .line 188
    .line 189
    iget-object v10, v9, Landroidx/datastore/core/SingleProcessDataStore;->g:Ljava/util/List;

    .line 190
    .line 191
    if-nez v10, :cond_8

    .line 192
    .line 193
    move-object v2, p1

    .line 194
    move-object p1, v0

    .line 195
    move-object v0, v9

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    move-object v11, v9

    .line 202
    move-object v9, v7

    .line 203
    move-object v7, v2

    .line 204
    move-object v2, v10

    .line 205
    move-object v10, v8

    .line 206
    move-object v8, p1

    .line 207
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 218
    .line 219
    iput-object v11, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 220
    .line 221
    iput-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->g:Ljava/io/Serializable;

    .line 224
    .line 225
    iput-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->h:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->i:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 228
    .line 229
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/util/Iterator;

    .line 230
    .line 231
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 232
    .line 233
    invoke-interface {p1, v7, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-ne p1, v1, :cond_9

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_a
    move-object p1, v0

    .line 241
    move-object v2, v8

    .line 242
    move-object v7, v9

    .line 243
    move-object v8, v10

    .line 244
    move-object v0, v11

    .line 245
    :goto_4
    iput-object v6, v0, Landroidx/datastore/core/SingleProcessDataStore;->g:Ljava/util/List;

    .line 246
    .line 247
    iput-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 248
    .line 249
    iput-object v7, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->f:Ljava/lang/Object;

    .line 250
    .line 251
    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->g:Ljava/io/Serializable;

    .line 252
    .line 253
    iput-object v8, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->h:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v6, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->i:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 256
    .line 257
    iput-object v6, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->j:Ljava/util/Iterator;

    .line 258
    .line 259
    iput v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 260
    .line 261
    invoke-interface {v8, p1}, Lkotlinx/coroutines/sync/Mutex;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-ne p1, v1, :cond_b

    .line 266
    .line 267
    :goto_5
    return-object v1

    .line 268
    :cond_b
    move-object v3, v7

    .line 269
    move-object v1, v8

    .line 270
    :goto_6
    :try_start_0
    iput-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 271
    .line 272
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .line 274
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 278
    .line 279
    new-instance v0, Landroidx/datastore/core/Data;

    .line 280
    .line 281
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 282
    .line 283
    if-eqz v1, :cond_c

    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    goto :goto_7

    .line 290
    :cond_c
    const/4 v2, 0x0

    .line 291
    :goto_7
    invoke-direct {v0, v2, v1}, Landroidx/datastore/core/Data;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 298
    .line 299
    return-object p1

    .line 300
    :catchall_0
    move-exception p1

    .line 301
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    throw p1
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->h:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->h:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 58
    .line 59
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->h:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    move-object v0, p0

    .line 73
    :goto_2
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 74
    .line 75
    new-instance v1, Landroidx/datastore/core/ReadException;

    .line 76
    .line 77
    invoke-direct {v1, p1}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->h:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->h:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception p1

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 58
    .line 59
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->h:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    move-object v0, p0

    .line 70
    :goto_1
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 71
    .line 72
    new-instance v1, Landroidx/datastore/core/ReadException;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->i:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readData$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->g:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->i:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->f:Ljava/io/FileInputStream;

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_4

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->c()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 66
    .line 67
    .line 68
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfxz;->a:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 69
    .line 70
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 71
    .line 72
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->f:Ljava/io/FileInputStream;

    .line 73
    .line 74
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxw;->F(Ljava/io/FileInputStream;)Lcom/google/android/gms/internal/ads/zzfxw;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxz;->b:Lcom/google/android/gms/internal/ads/zzfxw;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    .line 86
    :goto_1
    if-ne v0, v1, :cond_3

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_3
    move-object v1, p1

    .line 90
    move-object p1, v0

    .line 91
    move-object v0, p0

    .line 92
    :goto_2
    const/4 v2, 0x0

    .line 93
    :try_start_5
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 94
    .line 95
    .line 96
    return-object p1

    .line 97
    :catch_1
    move-exception p1

    .line 98
    goto :goto_5

    .line 99
    :goto_3
    move-object v1, p1

    .line 100
    move-object p1, v0

    .line 101
    move-object v0, p0

    .line 102
    goto :goto_4

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    goto :goto_3

    .line 105
    :goto_4
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 106
    :catchall_2
    move-exception v2

    .line 107
    :try_start_7
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 111
    :catch_2
    move-exception p1

    .line 112
    move-object v0, p0

    .line 113
    :goto_5
    invoke-virtual {v0}, Landroidx/datastore/core/SingleProcessDataStore;->c()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfxz;->a:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 124
    .line 125
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfxz;->b:Lcom/google/android/gms/internal/ads/zzfxw;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_4
    throw p1
.end method

.method public final getData()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->c:Lkotlinx/coroutines/flow/Flow;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->i:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->g:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->i:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    if-eq v2, v4, :cond_4

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v2, v3, :cond_2

    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->f:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroidx/datastore/core/CorruptionException;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
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
    :cond_2
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->f:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroidx/datastore/core/CorruptionException;

    .line 67
    .line 68
    iget-object v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Landroidx/datastore/core/SingleProcessDataStore;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :try_start_1
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->c:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->f:Ljava/lang/Object;

    .line 78
    .line 79
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->i:I

    .line 80
    .line 81
    invoke-virtual {v3, p1, v0}, Landroidx/datastore/core/SingleProcessDataStore;->j(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    if-ne v0, v1, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    return-object p1

    .line 89
    :catch_1
    move-exception p1

    .line 90
    move-object v0, v2

    .line 91
    :goto_1
    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_4
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore;

    .line 98
    .line 99
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_2

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :catch_2
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :try_start_3
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->c:Ljava/lang/Object;

    .line 109
    .line 110
    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->i:I

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1
    :try_end_3
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_3 .. :try_end_3} :catch_3

    .line 116
    if-ne p1, v1, :cond_6

    .line 117
    .line 118
    :goto_2
    return-object v1

    .line 119
    :cond_6
    return-object p1

    .line 120
    :catch_3
    move-exception p1

    .line 121
    move-object v1, p0

    .line 122
    :goto_3
    iget-object v2, v1, Landroidx/datastore/core/SingleProcessDataStore;->b:Landroidx/datastore/core/CorruptionHandler;

    .line 123
    .line 124
    iput-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->c:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->f:Ljava/lang/Object;

    .line 127
    .line 128
    iput v3, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->i:I

    .line 129
    .line 130
    invoke-interface {v2, p1}, Landroidx/datastore/core/CorruptionHandler;->a(Landroidx/datastore/core/CorruptionException;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    throw p1
.end method

.method public final i(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

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
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

    .line 32
    .line 33
    const-string v3, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    if-eq v2, v7, :cond_2

    .line 42
    .line 43
    if-ne v2, v6, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 48
    .line 49
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->g:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p3, Landroidx/datastore/core/Data;

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 78
    .line 79
    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroidx/datastore/core/Data;

    .line 84
    .line 85
    iget-object v2, p2, Landroidx/datastore/core/Data;->a:Ljava/lang/Object;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v2, v4

    .line 95
    :goto_1
    iget v8, p2, Landroidx/datastore/core/Data;->b:I

    .line 96
    .line 97
    if-ne v2, v8, :cond_b

    .line 98
    .line 99
    iget-object v2, p2, Landroidx/datastore/core/Data;->a:Ljava/lang/Object;

    .line 100
    .line 101
    new-instance v8, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    .line 102
    .line 103
    invoke-direct {v8, p3, v2, v5}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 104
    .line 105
    .line 106
    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 107
    .line 108
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->g:Ljava/lang/Object;

    .line 111
    .line 112
    iput v7, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

    .line 113
    .line 114
    invoke-static {p1, v0, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v1, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    move-object p3, p2

    .line 122
    move-object p2, p1

    .line 123
    move-object p1, v2

    .line 124
    move-object v2, p0

    .line 125
    :goto_2
    iget-object v7, p3, Landroidx/datastore/core/Data;->a:Ljava/lang/Object;

    .line 126
    .line 127
    if-eqz v7, :cond_6

    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    move v7, v4

    .line 135
    :goto_3
    iget p3, p3, Landroidx/datastore/core/Data;->b:I

    .line 136
    .line 137
    if-ne v7, p3, :cond_a

    .line 138
    .line 139
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-eqz p3, :cond_7

    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_7
    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 147
    .line 148
    iput-object p2, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->f:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v5, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->g:Ljava/lang/Object;

    .line 151
    .line 152
    iput v6, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

    .line 153
    .line 154
    invoke-virtual {v2, p2, v0}, Landroidx/datastore/core/SingleProcessDataStore;->j(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-ne p1, v1, :cond_8

    .line 159
    .line 160
    :goto_4
    return-object v1

    .line 161
    :cond_8
    move-object p1, p2

    .line 162
    move-object p3, v2

    .line 163
    :goto_5
    iget-object p2, p3, Landroidx/datastore/core/SingleProcessDataStore;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 164
    .line 165
    new-instance p3, Landroidx/datastore/core/Data;

    .line 166
    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    :cond_9
    invoke-direct {p3, v4, p1}, Landroidx/datastore/core/Data;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 181
    .line 182
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 187
    .line 188
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public final j(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    const-string v0, "Unable to rename "

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->k:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->h:Ljava/io/FileOutputStream;

    .line 41
    .line 42
    iget-object v2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->g:Ljava/io/FileOutputStream;

    .line 43
    .line 44
    iget-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->f:Ljava/io/File;

    .line 45
    .line 46
    iget-object v1, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->c()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    :goto_1
    new-instance v3, Ljava/io/File;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/datastore/core/SingleProcessDataStore;->c()Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object v5, p0, Landroidx/datastore/core/SingleProcessDataStore;->d:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 110
    .line 111
    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    :try_start_2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfxz;->a:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 115
    .line 116
    new-instance v5, Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;

    .line 117
    .line 118
    invoke-direct {v5, p2}, Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;-><init>(Ljava/io/FileOutputStream;)V

    .line 119
    .line 120
    .line 121
    iput-object p0, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->c:Landroidx/datastore/core/SingleProcessDataStore;

    .line 122
    .line 123
    iput-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->f:Ljava/io/File;

    .line 124
    .line 125
    iput-object p2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->g:Ljava/io/FileOutputStream;

    .line 126
    .line 127
    iput-object p2, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->h:Ljava/io/FileOutputStream;

    .line 128
    .line 129
    iput v4, v1, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->k:I

    .line 130
    .line 131
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxw;

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzhyu;->f(Ljava/io/OutputStream;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    .line 138
    if-ne p1, v2, :cond_4

    .line 139
    .line 140
    return-object v2

    .line 141
    :cond_4
    move-object v1, p0

    .line 142
    move-object p1, p2

    .line 143
    move-object v2, p1

    .line 144
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 149
    .line 150
    .line 151
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    const/4 p1, 0x0

    .line 154
    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Landroidx/datastore/core/SingleProcessDataStore;->c()Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 162
    .line 163
    .line 164
    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    .line 171
    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    .line 181
    .line 182
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    :catch_0
    move-exception p1

    .line 194
    goto :goto_5

    .line 195
    :goto_3
    move-object v2, p2

    .line 196
    goto :goto_4

    .line 197
    :catchall_1
    move-exception p1

    .line 198
    goto :goto_3

    .line 199
    :goto_4
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 200
    :catchall_2
    move-exception p2

    .line 201
    :try_start_7
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 205
    :goto_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-eqz p2, :cond_6

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 212
    .line 213
    .line 214
    :cond_6
    throw p1

    .line 215
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 216
    .line 217
    const-string v0, "Unable to create parent directories of "

    .line 218
    .line 219
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1
.end method
