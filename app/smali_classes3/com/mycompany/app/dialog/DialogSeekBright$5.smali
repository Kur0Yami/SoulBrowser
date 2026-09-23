.class Lcom/mycompany/app/dialog/DialogSeekBright$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$5;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekBright$5;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2, p1}, Lcom/mycompany/app/dialog/DialogSeekBright;->B(Lcom/mycompany/app/dialog/DialogSeekBright;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekBright$5;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogSeekBright;->B(Lcom/mycompany/app/dialog/DialogSeekBright;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->z0:Z

    .line 12
    .line 13
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekBright$5;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogSeekBright;->B(Lcom/mycompany/app/dialog/DialogSeekBright;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->z0:Z

    .line 12
    .line 13
    return-void
.end method
