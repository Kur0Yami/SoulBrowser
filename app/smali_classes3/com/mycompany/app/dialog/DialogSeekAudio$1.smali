.class Lcom/mycompany/app/dialog/DialogSeekAudio$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekAudio;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$1;->c:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$1;->c:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v2, "audio"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/media/AudioManager;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->l0:Landroid/media/AudioManager;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iput v3, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->a0:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->k0:I

    .line 32
    .line 33
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 34
    .line 35
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekAudio$1$1;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSeekAudio$1$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio$1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
