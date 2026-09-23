.class public Lcom/mycompany/app/data/book/DataBookDown;
.super Lcom/mycompany/app/data/book/DataBookList;
.source "SourceFile"


# direct methods
.method public static k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;
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
    new-instance p0, Lcom/mycompany/app/data/book/DataBookDown;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp;->r0:Lcom/mycompany/app/data/book/DataBookDown;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-class v0, Lcom/mycompany/app/data/book/DataBookDown;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainApp;->r0:Lcom/mycompany/app/data/book/DataBookDown;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/data/book/DataBookDown;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainApp;->r0:Lcom/mycompany/app/data/book/DataBookDown;

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
    iget-object p0, p0, Lcom/mycompany/app/main/MainApp;->r0:Lcom/mycompany/app/data/book/DataBookDown;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final l(JIJJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 9
    .line 10
    iput-wide p4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 11
    .line 12
    iput-wide p6, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    if-eq p3, p2, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
