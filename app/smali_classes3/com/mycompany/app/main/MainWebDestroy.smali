.class public Lcom/mycompany/app/main/MainWebDestroy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainWebDestroy$WebBusyListener;,
        Lcom/mycompany/app/main/MainWebDestroy$DelItem;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/mycompany/app/web/WebViewActivity;

.field public c:Landroid/os/Handler;

.field public d:Lcom/mycompany/app/main/MainWebDestroy$WebBusyListener;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ljava/util/ArrayList;

.field public m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

.field public n:Lcom/mycompany/app/main/MainWebDestroy$DelItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/os/Handler;Lcom/mycompany/app/main/MainWebDestroy$WebBusyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mycompany/app/main/MainWebDestroy;->c:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/mycompany/app/main/MainWebDestroy;->d:Lcom/mycompany/app/main/MainWebDestroy$WebBusyListener;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->c:Landroid/os/Handler;

    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->a:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_0
    new-instance v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->a:Ljava/util/List;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainWebDestroy;->d(Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->a:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    :goto_1
    return-void

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainWebDestroy;->d(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->f:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainWebDestroy;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->g:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-wide/16 v0, 0x4b0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->h()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const-wide/16 v0, 0x320

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-wide/16 v0, 0x1f4

    .line 26
    .line 27
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainWebDestroy;->c:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$1;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainWebDestroy$1;-><init>(Lcom/mycompany/app/main/MainWebDestroy;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final e()Lcom/mycompany/app/main/MainWebDestroy$DelItem;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->a:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v3, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 27
    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/webkit/WebView;

    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    iput v2, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iput-object v0, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v2, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iput-object v0, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;

    .line 67
    .line 68
    new-instance v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    return-object v1

    .line 76
    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final f()Lcom/mycompany/app/main/MainWebDestroy$DelItem;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v1, :cond_5

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_5

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->h()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->j:Z

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->e()Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iput v2, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->i()V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->e()Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :catch_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainWebDestroy;->i()V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public final g()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v3, v0

    .line 20
    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    check-cast v4, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v4, v4, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainWebDestroy;->h:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->d:Lcom/mycompany/app/main/MainWebDestroy$WebBusyListener;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    invoke-interface {v0}, Lcom/mycompany/app/main/MainWebDestroy$WebBusyListener;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->f:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->g:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->h:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->j:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->k:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy;->l:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method
