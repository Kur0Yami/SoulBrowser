.class public Lcom/mycompany/app/data/DataNews;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;
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
    new-instance p0, Lcom/mycompany/app/data/DataNews;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp;->h0:Lcom/mycompany/app/data/DataNews;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-class v0, Lcom/mycompany/app/data/DataNews;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainApp;->h0:Lcom/mycompany/app/data/DataNews;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/data/DataNews;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainApp;->h0:Lcom/mycompany/app/data/DataNews;

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
    iget-object p0, p0, Lcom/mycompany/app/main/MainApp;->h0:Lcom/mycompany/app/data/DataNews;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/List;)J
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mycompany/app/data/DataNews;->b:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/mycompany/app/data/DataNews;->c:J

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/mycompany/app/data/DataNews;->c:J

    .line 25
    .line 26
    :goto_1
    iget-wide v0, p0, Lcom/mycompany/app/data/DataNews;->c:J

    .line 27
    .line 28
    return-wide v0
.end method
