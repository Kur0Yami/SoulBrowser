.class Lcom/mycompany/app/setting/SettingMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$3;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingMenu;->s2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$3;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

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
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->L0()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 16
    .line 17
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reset_setting:I

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 20
    .line 21
    new-instance v3, Lcom/mycompany/app/setting/SettingMenu$29;

    .line 22
    .line 23
    invoke-direct {v3, p1}, Lcom/mycompany/app/setting/SettingMenu$29;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->i2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$30;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingMenu$30;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
