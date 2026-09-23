.class public Lcom/mycompany/app/main/MainTransText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainTransText$LocalWebViewClient;,
        Lcom/mycompany/app/main/MainTransText$WebAppInterface;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

.field public d:Landroid/view/ViewGroup;

.field public e:Ljava/util/List;

.field public final f:I

.field public g:Lcom/mycompany/app/view/MyWebSafe;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:I

.field public r:Ljava/util/concurrent/ExecutorService;

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText;->a:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/mycompany/app/main/MainTransText;->c:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/mycompany/app/main/MainTransText;->d:Landroid/view/ViewGroup;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/mycompany/app/main/MainTransText;->e:Ljava/util/List;

    .line 18
    .line 19
    iput p5, p0, Lcom/mycompany/app/main/MainTransText;->f:I

    .line 20
    .line 21
    iput-object p6, p0, Lcom/mycompany/app/main/MainTransText;->o:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/mycompany/app/main/MainTransText;->l:I

    .line 25
    .line 26
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText;->n:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/main/MainTransText$1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainTransText$1;-><init>(Lcom/mycompany/app/main/MainTransText;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/mycompany/app/main/MainTransText;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

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
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTransText;->j:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainTransText;->j:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/MainTransText$5;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTransText$5;-><init>(Lcom/mycompany/app/main/MainTransText;)V

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
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTransText;->j:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainTransText;->j:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/main/MainTransText$6;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTransText$6;-><init>(Lcom/mycompany/app/main/MainTransText;)V

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainTransText;->h:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainTransText;->h:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->a:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->c:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->d:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->e:Ljava/util/List;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->k:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->n:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->o:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/main/MainTransText;->r:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText;->r:Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText;->b:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/mycompany/app/main/MainTransText;->r:Ljava/util/concurrent/ExecutorService;

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
