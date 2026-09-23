.class public Lcom/mycompany/app/data/book/DataBookFilter;
.super Lcom/mycompany/app/data/book/DataBookList;
.source "SourceFile"


# direct methods
.method public static k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/mycompany/app/data/book/DataBookFilter;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp;->s0:Lcom/mycompany/app/data/book/DataBookFilter;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-class v0, Lcom/mycompany/app/data/book/DataBookFilter;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainApp;->s0:Lcom/mycompany/app/data/book/DataBookFilter;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/data/book/DataBookFilter;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainApp;->s0:Lcom/mycompany/app/data/book/DataBookFilter;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/mycompany/app/main/MainApp;->s0:Lcom/mycompany/app/data/book/DataBookFilter;

    .line 39
    .line 40
    return-object p0
.end method
