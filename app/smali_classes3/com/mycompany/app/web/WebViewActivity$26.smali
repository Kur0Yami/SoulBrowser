.class Lcom/mycompany/app/web/WebViewActivity$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$26;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$26;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G6()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H6()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sb:Lcom/google/android/gms/cast/framework/CastContext;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$28;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$28;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->rb:Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->rb:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->rb:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/framework/CastContext;->f(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$27;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$27;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :goto_0
    return-void
.end method
