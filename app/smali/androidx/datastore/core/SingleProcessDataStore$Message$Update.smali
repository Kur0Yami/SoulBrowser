.class public final Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
.super Landroidx/datastore/core/SingleProcessDataStore$Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/SingleProcessDataStore$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/SingleProcessDataStore$Message<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/datastore/core/SingleProcessDataStore$Message$Update;",
        "T",
        "Landroidx/datastore/core/SingleProcessDataStore$Message;",
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


# instance fields
.field public final a:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public final b:Lkotlinx/coroutines/CompletableDeferred;

.field public final c:Landroidx/datastore/core/State;

.field public final d:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CompletableDeferred;Landroidx/datastore/core/State;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callerContext"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    check-cast p1, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->a:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 24
    .line 25
    iput-object p3, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->c:Landroidx/datastore/core/State;

    .line 26
    .line 27
    iput-object p4, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->d:Lkotlin/coroutines/CoroutineContext;

    .line 28
    .line 29
    return-void
.end method
