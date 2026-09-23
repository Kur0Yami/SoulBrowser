.class public Lcom/mycompany/app/dialog/DialogLockReset;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public final c0:I

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogLockReset;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogLockReset;->c0:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogLockReset$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogLockReset$1;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogLockReset$6;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogLockReset$6;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLockReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLockReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLockReset;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
