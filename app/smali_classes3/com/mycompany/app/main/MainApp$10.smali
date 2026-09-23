.class Lcom/mycompany/app/main/MainApp$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainApp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$10;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$10;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-class v3, Lcom/mycompany/app/main/MainDownSvc;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v3, 0x1a

    .line 17
    .line 18
    if-lt v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 33
    .line 34
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainApp;->w:Z

    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->c()V

    .line 41
    .line 42
    .line 43
    :cond_1
    new-instance v1, Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/mycompany/app/main/MainApp$11;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainApp$11;-><init>(Lcom/mycompany/app/main/MainApp;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method
