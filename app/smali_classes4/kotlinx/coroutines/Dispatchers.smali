.class public final Lkotlinx/coroutines/Dispatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlinx/coroutines/Dispatchers;",
        "",
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


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public static final b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->g:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sput-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 4
    .line 5
    sget v0, Lkotlinx/coroutines/Unconfined;->f:I

    .line 6
    .line 7
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->f:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 8
    .line 9
    sput-object v0, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 10
    .line 11
    return-void
.end method
