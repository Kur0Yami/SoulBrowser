.class Lcom/mycompany/app/main/MainDownSvc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$1;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$1;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainDownSvc;->e(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const v2, 0x7ffffffb

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->M:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :try_start_0
    new-instance v1, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->M:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 49
    .line 50
    new-instance v1, Landroid/content/IntentFilter;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "net.kaki87.soul2.testing.ACTION_DOWN_PAUSE"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "net.kaki87.soul2.testing.ACTION_DOWN_RETRY"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v2, "net.kaki87.soul2.testing.ACTION_DOWN_CANCEL"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "net.kaki87.soul2.testing.ACTION_DOWN_EXIT"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "net.kaki87.soul2.testing.ACTION_IMAGE_CANCEL"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->M:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 91
    .line 92
    const/4 v3, 0x4

    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-static {v0, v2, v1, v4, v3}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    :catch_0
    :goto_1
    const/4 v1, 0x0

    .line 98
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainDownSvc;->l:Z

    .line 99
    .line 100
    return-void
.end method
