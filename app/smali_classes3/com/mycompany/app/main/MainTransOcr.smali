.class public Lcom/mycompany/app/main/MainTransOcr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;,
        Lcom/mycompany/app/main/MainTransOcr$LocalWebViewClient;,
        Lcom/mycompany/app/main/MainTransOcr$WebAppInterface;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;

.field public d:Landroid/view/ViewGroup;

.field public e:Ljava/util/List;

.field public f:Lcom/mycompany/app/view/MyWebSafe;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:I

.field public q:Ljava/util/concurrent/ExecutorService;

.field public r:Landroid/os/Handler;

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->a:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->b:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/mycompany/app/main/MainTransOcr;->c:Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/mycompany/app/main/MainTransOcr;->e:Ljava/util/List;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/mycompany/app/main/MainTransOcr;->k:I

    .line 25
    .line 26
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->m:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTransOcr;->c()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->r:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance p2, Lcom/mycompany/app/main/MainTransOcr$3;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainTransOcr$3;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 p3, 0xbb8

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p2, Lcom/mycompany/app/main/MainTransOcr$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainTransOcr$1;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Lcom/mycompany/app/main/MainTransOcr;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTransOcr;->i:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainTransOcr;->i:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/MainTransOcr$7;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTransOcr$7;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTransOcr;->i:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainTransOcr;->i:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/main/MainTransOcr$8;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTransOcr$8;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTransOcr;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainTransOcr;->g:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainTransOcr;->g:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 25
    .line 26
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->a:Lcom/mycompany/app/main/MainActivity;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->b:Landroid/content/Context;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->c:Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->e:Ljava/util/List;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->j:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->m:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->n:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransOcr;->q:Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->r:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->r:Landroid/os/Handler;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainTransOcr;->s:Z

    .line 13
    .line 14
    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->q:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->q:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->e:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/mycompany/app/main/MainTransOcr;->k:I

    .line 10
    .line 11
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->m:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainTransOcr;->c()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->r:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v0, Lcom/mycompany/app/main/MainTransOcr$3;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTransOcr$3;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v1, 0xbb8

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/main/MainTransOcr;->d:Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/MainTransOcr$2;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTransOcr$2;-><init>(Lcom/mycompany/app/main/MainTransOcr;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
