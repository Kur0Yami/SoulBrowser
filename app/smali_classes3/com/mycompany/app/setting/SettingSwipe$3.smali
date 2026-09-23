.class Lcom/mycompany/app/setting/SettingSwipe$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$3;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingSwipe;->e2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$3;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->O1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSwipe;->E0()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reset_setting:I

    .line 26
    .line 27
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 28
    .line 29
    new-instance v3, Lcom/mycompany/app/setting/SettingSwipe$14;

    .line 30
    .line 31
    invoke-direct {v3, p1}, Lcom/mycompany/app/setting/SettingSwipe$14;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->O1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/setting/SettingSwipe$15;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingSwipe$15;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
