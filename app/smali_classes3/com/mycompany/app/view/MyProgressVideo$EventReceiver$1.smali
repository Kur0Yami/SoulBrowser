.class Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;->c:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;->c:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;->a:Lcom/mycompany/app/view/MyProgressVideo;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->m:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-instance v2, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;

    .line 16
    .line 17
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;-><init>(Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
