.class Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSeekAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekAudio;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;->a:Lcom/mycompany/app/dialog/DialogSeekAudio;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;->a:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekAudio;->l0:Landroid/media/AudioManager;

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-gez p2, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSeekAudio;->a0:I

    .line 22
    .line 23
    if-le p2, v0, :cond_2

    .line 24
    .line 25
    move p2, v0

    .line 26
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_1
    return-void
.end method
