.class Lcom/mycompany/app/view/MyProgressVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyProgressVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$2;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo$2;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->x:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->x:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 19
    .line 20
    new-instance v1, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/mycompany/app/view/MyProgressVideo;->x:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v2, v3, v1, v5, v4}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->b()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
