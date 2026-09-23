.class Lcom/mycompany/app/dialog/DialogSetDark$3;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$3;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$3;->c:Lcom/mycompany/app/dialog/DialogSetDark;

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
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetDark;->D()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$11;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogSetDark$11;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetDark;->o0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDark$12;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSetDark$12;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
