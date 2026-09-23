.class Lcom/mycompany/app/dialog/DialogTransLang$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$20;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$20;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->D0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->E0:Z

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSetMsg;->C()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/mycompany/app/dialog/DialogTransLang$20$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTransLang$20$1;-><init>(Lcom/mycompany/app/dialog/DialogTransLang$20;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$20;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;->a()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->E0:Z

    .line 18
    .line 19
    new-instance v2, Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 22
    .line 23
    const-class v4, Lcom/mycompany/app/setting/SettingTrans;

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "EXTRA_NOTI"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v1, "EXTRA_INDEX"

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
