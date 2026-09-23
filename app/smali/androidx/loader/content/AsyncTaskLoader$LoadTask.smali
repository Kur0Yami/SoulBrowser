.class final Landroidx/loader/content/AsyncTaskLoader$LoadTask;
.super Landroidx/loader/content/ModernAsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask<",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/loader/content/AsyncTaskLoader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->i()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    throw v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/loader/content/AsyncTaskLoader;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, v0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 7
    .line 8
    if-ne p1, p0, :cond_2

    .line 9
    .line 10
    iget-boolean p1, v0, Landroidx/loader/content/Loader;->g:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean p1, v0, Landroidx/loader/content/Loader;->c:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->k()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, v0, Landroidx/loader/content/Loader;->f:Z

    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, v0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->h()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v1, p0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/loader/content/AsyncTaskLoader;->j(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 12
    .line 13
    if-ne p1, p0, :cond_2

    .line 14
    .line 15
    iget-boolean p1, v0, Landroidx/loader/content/Loader;->g:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-boolean p1, v0, Landroidx/loader/content/Loader;->c:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->k()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, v0, Landroidx/loader/content/Loader;->f:Z

    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    iput-object v2, v0, Landroidx/loader/content/AsyncTaskLoader;->j:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->h()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void

    .line 39
    :cond_3
    iget-boolean v1, v0, Landroidx/loader/content/Loader;->d:Z

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroidx/loader/content/AsyncTaskLoader;->j(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    const/4 v1, 0x0

    .line 48
    iput-boolean v1, v0, Landroidx/loader/content/Loader;->g:Z

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    iput-object v2, v0, Landroidx/loader/content/AsyncTaskLoader;->i:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroidx/loader/content/Loader;->a(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->j:Landroidx/loader/content/AsyncTaskLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
