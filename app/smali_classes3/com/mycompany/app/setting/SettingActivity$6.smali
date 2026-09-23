.class Lcom/mycompany/app/setting/SettingActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingActivity$6;->c:Lcom/mycompany/app/setting/SettingActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity$6;->c:Lcom/mycompany/app/setting/SettingActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->V1:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingActivity;->E0()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetReset;

    .line 12
    .line 13
    iget v1, p1, Lcom/mycompany/app/setting/SettingActivity;->U1:I

    .line 14
    .line 15
    new-instance v2, Lcom/mycompany/app/setting/SettingActivity$7;

    .line 16
    .line 17
    invoke-direct {v2, p1}, Lcom/mycompany/app/setting/SettingActivity$7;-><init>(Lcom/mycompany/app/setting/SettingActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2}, Lcom/mycompany/app/dialog/DialogSetReset;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->V1:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/setting/SettingActivity$8;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingActivity$8;-><init>(Lcom/mycompany/app/setting/SettingActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
