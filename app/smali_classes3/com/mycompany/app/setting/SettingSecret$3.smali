.class Lcom/mycompany/app/setting/SettingSecret$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSecret;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecret;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$3;->c:Lcom/mycompany/app/setting/SettingSecret;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingSecret;->d2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$3;->c:Lcom/mycompany/app/setting/SettingSecret;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSecret;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSecret;->c2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSecret;->P0()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_data_info:I

    .line 21
    .line 22
    new-instance v2, Lcom/mycompany/app/setting/SettingSecret$8;

    .line 23
    .line 24
    invoke-direct {v2, p1}, Lcom/mycompany/app/setting/SettingSecret$8;-><init>(Lcom/mycompany/app/setting/SettingSecret;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1, v1, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingSecret;->c2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/setting/SettingSecret$9;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingSecret$9;-><init>(Lcom/mycompany/app/setting/SettingSecret;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
