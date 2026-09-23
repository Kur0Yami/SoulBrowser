.class Lcom/mycompany/app/main/MainWebDestroy$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainWebDestroy$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainWebDestroy$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainWebDestroy$1$1;->c:Lcom/mycompany/app/main/MainWebDestroy$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy$1$1;->c:Lcom/mycompany/app/main/MainWebDestroy$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainWebDestroy$1;->c:Lcom/mycompany/app/main/MainWebDestroy;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->g:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->j:Z

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/main/MainWebDestroy;->m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, v0, Lcom/mycompany/app/main/MainWebDestroy;->m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lcom/mycompany/app/main/MainWebDestroy;->a:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainWebDestroy;->f()Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    monitor-exit v3

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0

    .line 29
    :cond_0
    :goto_0
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainWebDestroy;->j:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->j:Z

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainWebDestroy;->c()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    if-nez v2, :cond_2

    .line 40
    .line 41
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-object v2, v0, Lcom/mycompany/app/main/MainWebDestroy;->n:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->c:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$2;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainWebDestroy$2;-><init>(Lcom/mycompany/app/main/MainWebDestroy;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
