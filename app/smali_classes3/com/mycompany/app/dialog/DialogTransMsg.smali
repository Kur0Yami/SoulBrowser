.class public Lcom/mycompany/app/dialog/DialogTransMsg;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Landroidx/appcompat/widget/AppCompatTextView;

.field public e0:Lcom/mycompany/app/view/MyLineText;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->b0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogTransMsg$1;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTransMsg$1;-><init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->a0:Landroid/content/Context;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->b0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 28
    .line 29
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
