.class public Landroidx/work/impl/OperationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Operation;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->c:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/work/impl/OperationImpl;->d:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 17
    .line 18
    sget-object v0, Landroidx/work/Operation;->b:Landroidx/work/Operation$State$IN_PROGRESS;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/work/impl/OperationImpl;->a(Landroidx/work/Operation$State;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/Operation$State;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/OperationImpl;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/work/Operation$State$SUCCESS;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/work/impl/OperationImpl;->d:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    instance-of v0, p1, Landroidx/work/Operation$State$FAILURE;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Landroidx/work/Operation$State$FAILURE;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/work/Operation$State$FAILURE;->a:Ljava/lang/Throwable;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->i(Ljava/lang/Throwable;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
