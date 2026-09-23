.class Lcom/mycompany/app/dialog/DialogSeekSub$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub$9;->a:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSeekSub;->p0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub$9;->a:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSub;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 14
    .line 15
    const/16 v2, 0x64

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSub;->D()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 25
    .line 26
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v0, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 36
    .line 37
    sub-int/2addr v0, v2

    .line 38
    mul-int/lit16 v0, v0, 0x3e8

    .line 39
    .line 40
    invoke-interface {v1, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method
