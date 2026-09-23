.class final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final c:Lcom/google/firebase/components/OptionalProvider;

.field public final f:Lcom/google/firebase/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$3;->c:Lcom/google/firebase/components/OptionalProvider;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$3;->f:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$3;->c:Lcom/google/firebase/components/OptionalProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$3;->f:Lcom/google/firebase/inject/Provider;

    .line 4
    .line 5
    sget-object v2, Lcom/google/firebase/components/ComponentRuntime;->f:Lcom/google/firebase/inject/Provider;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->b:Lcom/google/firebase/inject/Provider;

    .line 8
    .line 9
    sget-object v3, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->a:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iput-object v3, v0, Lcom/google/firebase/components/OptionalProvider;->a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->b:Lcom/google/firebase/inject/Provider;

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    check-cast v2, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/google/firebase/components/OptionalProvider;->c:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "provide() can be called only once."

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method
