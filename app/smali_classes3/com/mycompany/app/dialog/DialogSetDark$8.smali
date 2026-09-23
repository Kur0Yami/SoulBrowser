.class Lcom/mycompany/app/dialog/DialogSetDark$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$8;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$8;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetDark;->o0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetDark;->p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetDark;->q0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetDark;->E()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset_setting:I

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 33
    .line 34
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetDark$15;

    .line 35
    .line 36
    invoke-direct {v4, p1}, Lcom/mycompany/app/dialog/DialogSetDark$15;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetDark;->q0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 43
    .line 44
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDark$16;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSetDark$16;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
