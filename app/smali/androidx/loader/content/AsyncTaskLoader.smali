.class public abstract Landroidx/loader/content/AsyncTaskLoader;
.super Landroidx/loader/content/Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/Loader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public h:Ljava/util/concurrent/Executor;

.field public volatile i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

.field public volatile j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/Loader;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    const-string v0, " waiting="

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p2, "mTask="

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p2, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "mCancellingTask="

    .line 43
    .line 44
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 48
    .line 49
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->c:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->k()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v2, p0, Landroidx/loader/content/Loader;->f:Z

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 38
    .line 39
    iget-object v4, v0, Landroidx/loader/content/ModernAsyncTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Landroidx/loader/content/ModernAsyncTask;->c:Ljava/util/concurrent/FutureTask;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 53
    .line 54
    iput-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->g()V

    .line 57
    .line 58
    .line 59
    :cond_3
    iput-object v3, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 60
    .line 61
    return v0

    .line 62
    :cond_4
    return v1
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/loader/content/AsyncTaskLoader;->h:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/loader/content/ModernAsyncTask;->f:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 27
    .line 28
    sget-object v3, Landroidx/loader/content/ModernAsyncTask$Status;->c:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 29
    .line 30
    if-eq v2, v3, :cond_3

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/loader/content/ModernAsyncTask;->f:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "We should never reach this state"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "Cannot execute task: the task is already running."

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    sget-object v2, Landroidx/loader/content/ModernAsyncTask$Status;->f:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 69
    .line 70
    iput-object v2, v0, Landroidx/loader/content/ModernAsyncTask;->f:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/loader/content/ModernAsyncTask;->c:Ljava/util/concurrent/FutureTask;

    .line 73
    .line 74
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method public abstract i()Ljava/lang/Object;
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->c()Z

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;-><init>(Landroidx/loader/content/AsyncTaskLoader;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->h()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
