.class Lcom/mycompany/app/dialog/DialogSeekText$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekText$10;->a:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSeekText;->t0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText$10;->a:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekText;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 14
    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    iput v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 27
    .line 28
    const-string v4, "%"

    .line 29
    .line 30
    invoke-static {v2, v3, v4, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 34
    .line 35
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 36
    .line 37
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->a0:I

    .line 38
    .line 39
    sub-int/2addr v2, v3

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 48
    .line 49
    invoke-interface {v1, v2}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekText;->D(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
