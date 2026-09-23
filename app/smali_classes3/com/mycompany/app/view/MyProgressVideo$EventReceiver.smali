.class Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyProgressVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyProgressVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;->a:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;->a:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/view/MyProgressVideo;->m:Landroid/media/AudioManager;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p2, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;-><init>(Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
