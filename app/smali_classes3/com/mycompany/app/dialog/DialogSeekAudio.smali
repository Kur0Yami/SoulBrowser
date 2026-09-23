.class public Lcom/mycompany/app/dialog/DialogSeekAudio;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;,
        Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;
    }
.end annotation


# instance fields
.field public a0:I

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroid/widget/SeekBar;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:I

.field public k0:I

.field public l0:Landroid/media/AudioManager;

.field public m0:Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 11
    .line 12
    new-instance p1, Lcom/mycompany/app/dialog/DialogSeekAudio$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogSeekAudio$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSeekAudio;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-gez p1, :cond_1

    .line 8
    .line 9
    move p1, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->a0:I

    .line 12
    .line 13
    if-le p1, v2, :cond_2

    .line 14
    .line 15
    move p1, v2

    .line 16
    :cond_2
    :goto_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 17
    .line 18
    if-ne v2, p1, :cond_3

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_3
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 31
    .line 32
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->l0:Landroid/media/AudioManager;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    iget p0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 41
    .line 42
    invoke-virtual {p1, v0, p0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->k0:I

    .line 10
    .line 11
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->m0:Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->m0:Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio;->l0:Landroid/media/AudioManager;

    .line 76
    .line 77
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
