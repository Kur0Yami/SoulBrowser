.class Lcom/mycompany/app/dialog/DialogSeekWebText$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWebText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$14;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$14;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->c0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->L0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->M0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekWebText;->D()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->c0:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset_setting:I

    .line 26
    .line 27
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 28
    .line 29
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWebText$22;

    .line 30
    .line 31
    invoke-direct {v4, p1}, Lcom/mycompany/app/dialog/DialogSeekWebText$22;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->M0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekWebText$23;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSeekWebText$23;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
