.class Lcom/mycompany/app/setting/SettingLand$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$4;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingLand;->y2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$4;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->P1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->Q1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLand;->E0()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reset_setting:I

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 23
    .line 24
    new-instance v3, Lcom/mycompany/app/setting/SettingLand$18;

    .line 25
    .line 26
    invoke-direct {v3, p1}, Lcom/mycompany/app/setting/SettingLand$18;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->P1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/setting/SettingLand$19;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingLand$19;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
