.class Lcom/mycompany/app/setting/SettingInfoLicenseList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingInfoLicenseList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLicenseList$2;->c:Lcom/mycompany/app/setting/SettingInfoLicenseList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->Z1:[[Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLicenseList$2;->c:Lcom/mycompany/app/setting/SettingInfoLicenseList;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->X1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingInfoLicenseList;->O0()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$string;->open_source:I

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 23
    .line 24
    new-instance v3, Lcom/mycompany/app/setting/SettingInfoLicenseList$5;

    .line 25
    .line 26
    invoke-direct {v3, p1}, Lcom/mycompany/app/setting/SettingInfoLicenseList$5;-><init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->X1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/setting/SettingInfoLicenseList$6;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingInfoLicenseList$6;-><init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->X1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 43
    .line 44
    new-instance v1, Lcom/mycompany/app/setting/SettingInfoLicenseList$7;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingInfoLicenseList$7;-><init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
