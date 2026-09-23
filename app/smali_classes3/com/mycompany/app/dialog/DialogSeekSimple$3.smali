.class Lcom/mycompany/app/dialog/DialogSeekSimple$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekSimple;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$3;->a:Lcom/mycompany/app/dialog/DialogSeekSimple;

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
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$3;->a:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 6
    .line 7
    iget p3, p2, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 8
    .line 9
    add-int/2addr p1, p3

    .line 10
    invoke-static {p2, p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->B(Lcom/mycompany/app/dialog/DialogSeekSimple;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$3;->a:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->B(Lcom/mycompany/app/dialog/DialogSeekSimple;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$3;->a:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->B(Lcom/mycompany/app/dialog/DialogSeekSimple;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
