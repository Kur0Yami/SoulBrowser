.class final Lkotlinx/coroutines/JobSupport$ChildCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildCompletion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$ChildCompletion;",
        "Lkotlinx/coroutines/JobNode;",
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


# instance fields
.field public final i:Lkotlinx/coroutines/JobSupport;

.field public final j:Lkotlinx/coroutines/JobSupport$Finishing;

.field public final k:Lkotlinx/coroutines/ChildHandleNode;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->i:Lkotlinx/coroutines/JobSupport;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->j:Lkotlinx/coroutines/JobSupport$Finishing;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->k:Lkotlinx/coroutines/ChildHandleNode;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->l:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport$ChildCompletion;->j(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->k:Lkotlinx/coroutines/ChildHandleNode;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/JobSupport;->Z(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->i:Lkotlinx/coroutines/JobSupport;

    .line 8
    .line 9
    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->j:Lkotlinx/coroutines/JobSupport$Finishing;

    .line 10
    .line 11
    iget-object v2, p0, Lkotlinx/coroutines/JobSupport$ChildCompletion;->l:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v3, p1, Lkotlinx/coroutines/ChildHandleNode;->i:Lkotlinx/coroutines/JobSupport;

    .line 16
    .line 17
    new-instance v4, Lkotlinx/coroutines/JobSupport$ChildCompletion;

    .line 18
    .line 19
    invoke-direct {v4, v0, v1, p1, v2}, Lkotlinx/coroutines/JobSupport$ChildCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/JobNode;I)Lkotlinx/coroutines/DisposableHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Lkotlinx/coroutines/NonDisposableHandle;->c:Lkotlinx/coroutines/NonDisposableHandle;

    .line 28
    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlinx/coroutines/JobSupport;->Z(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    :cond_2
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/JobSupport;->M(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/JobSupport;->x(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
