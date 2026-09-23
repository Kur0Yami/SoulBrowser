.class final Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x192,
        0x19a
    }
    m = "transformAndWrite"
    n = {
        "this",
        "curDataAndHash",
        "curData"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field public c:Landroidx/datastore/core/SingleProcessDataStore;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Landroidx/datastore/core/SingleProcessDataStore;

.field public j:I


# direct methods
.method public constructor <init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->i:Landroidx/datastore/core/SingleProcessDataStore;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->j:I

    .line 9
    .line 10
    sget-object p1, Landroidx/datastore/core/SingleProcessDataStore;->i:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->i:Landroidx/datastore/core/SingleProcessDataStore;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->i(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
