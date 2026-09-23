.class public final Lkotlinx/coroutines/SupervisorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a()Lkotlinx/coroutines/CompletableJob;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/SupervisorJobImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/JobImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
