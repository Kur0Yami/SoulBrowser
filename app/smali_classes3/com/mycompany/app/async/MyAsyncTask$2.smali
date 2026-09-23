.class Lcom/mycompany/app/async/MyAsyncTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/async/MyAsyncTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/async/MyAsyncTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask$2;->c:Lcom/mycompany/app/async/MyAsyncTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/async/MyAsyncTask$2;->c:Lcom/mycompany/app/async/MyAsyncTask;

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v1, Lcom/mycompany/app/async/MyAsyncTask$2$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/async/MyAsyncTask$2$1;-><init>(Lcom/mycompany/app/async/MyAsyncTask$2;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
