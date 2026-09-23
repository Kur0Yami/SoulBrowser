.class public abstract Lcom/mycompany/app/async/MyAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/Handler;

.field public c:Z

.field public d:Ljava/util/concurrent/ExecutorService;


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :catch_0
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->a:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 27
    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    new-instance v0, Lcom/mycompany/app/async/MyAsyncTask$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/mycompany/app/async/MyAsyncTask$1;-><init>(Lcom/mycompany/app/async/MyAsyncTask;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :catch_0
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->a:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 27
    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    new-instance p1, Lcom/mycompany/app/async/MyAsyncTask$2;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/mycompany/app/async/MyAsyncTask$2;-><init>(Lcom/mycompany/app/async/MyAsyncTask;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->d:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->a:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->d:Ljava/util/concurrent/ExecutorService;

    .line 64
    .line 65
    :cond_6
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    :catch_1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/async/MyAsyncTask$3;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/async/MyAsyncTask$3;-><init>(Lcom/mycompany/app/async/MyAsyncTask;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
