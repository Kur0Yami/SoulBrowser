.class Lcom/mycompany/app/main/MainDownSvc$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$21;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$21$1;->c:Lcom/mycompany/app/main/MainDownSvc$21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$21$1;->c:Lcom/mycompany/app/main/MainDownSvc$21;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$21;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->i:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->w:Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 30
    .line 31
    monitor-exit v2

    .line 32
    move-object v1, v3

    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v2

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    :catch_0
    :goto_2
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->d(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
