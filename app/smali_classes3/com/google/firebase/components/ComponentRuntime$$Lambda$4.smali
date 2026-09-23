.class final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final c:Lcom/google/firebase/components/LazySet;

.field public final f:Lcom/google/firebase/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->c:Lcom/google/firebase/components/LazySet;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->f:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->c:Lcom/google/firebase/components/LazySet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->f:Lcom/google/firebase/inject/Provider;

    .line 4
    .line 5
    sget-object v2, Lcom/google/firebase/components/ComponentRuntime;->f:Lcom/google/firebase/inject/Provider;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/components/LazySet;->b:Ljava/util/Set;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/firebase/components/LazySet;->a:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/google/firebase/components/LazySet;->b:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method
