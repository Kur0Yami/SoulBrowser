.class Lcom/mycompany/app/setting/SettingDisplay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$3;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$3;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingDisplay;->T0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingDisplay;->R0()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 16
    .line 17
    new-instance v1, Lcom/mycompany/app/setting/SettingDisplay$12;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingDisplay$12;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, p1, v2, v1}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingDisplay;->d2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/setting/SettingDisplay$13;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingDisplay$13;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
