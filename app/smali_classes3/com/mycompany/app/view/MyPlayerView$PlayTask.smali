.class Lcom/mycompany/app/view/MyPlayerView$PlayTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPlayerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyPlayerView$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/view/MyPlayerView;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/view/MyPlayerView;->i:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/mycompany/app/view/MyPlayerView;->j:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->v0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, v0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-eqz v2, :cond_4

    .line 40
    .line 41
    :try_start_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v3, v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyPlayerView$PlayTask;->f:Z

    .line 55
    .line 56
    :cond_5
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/view/MyPlayerView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/view/MyPlayerView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyPlayerView$PlayTask;->f:Z

    .line 19
    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/view/MyPlayerView$10;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPlayerView$10;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 53
    .line 54
    new-instance v2, Lcom/mycompany/app/view/MyPlayerView$10;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPlayerView$10;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
