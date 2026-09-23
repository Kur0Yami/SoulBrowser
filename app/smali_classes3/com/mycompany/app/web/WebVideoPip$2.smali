.class Lcom/mycompany/app/web/WebVideoPip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$2;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$2;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->j:Lcom/mycompany/app/web/WebVideoPip$EventReceiver;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$EventReceiver;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebVideoPip$EventReceiver;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->j:Lcom/mycompany/app/web/WebVideoPip$EventReceiver;

    .line 24
    .line 25
    new-instance v1, Landroid/content/IntentFilter;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "net.kaki87.soul2.testing.ACTION_VIDEO_FRWD"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "net.kaki87.soul2.testing.ACTION_VIDEO_PLAY"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "net.kaki87.soul2.testing.ACTION_VIDEO_FFWD"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 51
    .line 52
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoPip;->j:Lcom/mycompany/app/web/WebVideoPip$EventReceiver;

    .line 53
    .line 54
    const/4 v4, 0x4

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-static {v2, v3, v1, v5, v4}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    :goto_0
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$3;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebVideoPip$3;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method
