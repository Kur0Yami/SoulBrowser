.class final Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;
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
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x142,
        0x15c,
        0x1f9
    }
    m = "readAndInit"
    n = {
        "updateLock",
        "initData",
        "updateLock",
        "initData",
        "initializationComplete",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$1",
        "L$2",
        "L$1",
        "L$2",
        "L$3",
        "L$3"
    }
.end annotation


# instance fields
.field public c:Landroidx/datastore/core/SingleProcessDataStore;

.field public f:Ljava/lang/Object;

.field public g:Ljava/io/Serializable;

.field public h:Ljava/lang/Object;

.field public i:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

.field public j:Ljava/util/Iterator;

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroidx/datastore/core/SingleProcessDataStore;

.field public m:I


# direct methods
.method public constructor <init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->l:Landroidx/datastore/core/SingleProcessDataStore;

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
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->m:I

    .line 9
    .line 10
    sget-object p1, Landroidx/datastore/core/SingleProcessDataStore;->i:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->l:Landroidx/datastore/core/SingleProcessDataStore;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/datastore/core/SingleProcessDataStore;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
