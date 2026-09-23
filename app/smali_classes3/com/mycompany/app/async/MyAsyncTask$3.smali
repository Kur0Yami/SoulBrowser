.class Lcom/mycompany/app/async/MyAsyncTask$3;
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
    iput-object p1, p0, Lcom/mycompany/app/async/MyAsyncTask$3;->c:Lcom/mycompany/app/async/MyAsyncTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/async/MyAsyncTask$3;->c:Lcom/mycompany/app/async/MyAsyncTask;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->b:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->g()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
