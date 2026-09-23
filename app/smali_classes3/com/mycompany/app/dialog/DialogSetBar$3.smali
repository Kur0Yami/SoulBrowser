.class Lcom/mycompany/app/dialog/DialogSetBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar$3;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget p2, Lcom/mycompany/app/dialog/DialogSetBar;->K0:I

    .line 6
    .line 7
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetBar$3;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Lcom/mycompany/app/dialog/DialogSetBar;->B(Lcom/mycompany/app/dialog/DialogSetBar;I)V

    .line 13
    .line 14
    .line 15
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
    sget v0, Lcom/mycompany/app/dialog/DialogSetBar;->K0:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar$3;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogSetBar;->B(Lcom/mycompany/app/dialog/DialogSetBar;I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->B0:Z

    .line 17
    .line 18
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
    sget v0, Lcom/mycompany/app/dialog/DialogSetBar;->K0:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar$3;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogSetBar;->B(Lcom/mycompany/app/dialog/DialogSetBar;I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetBar;->B0:Z

    .line 17
    .line 18
    return-void
.end method
