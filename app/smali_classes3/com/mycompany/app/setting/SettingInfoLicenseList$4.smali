.class Lcom/mycompany/app/setting/SettingInfoLicenseList$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingInfoLicenseList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLicenseList$4;->a:Lcom/mycompany/app/setting/SettingInfoLicenseList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    add-int/lit8 p2, p2, -0x1

    .line 2
    .line 3
    if-ltz p2, :cond_5

    .line 4
    .line 5
    sget-object p1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->Z1:[[Ljava/lang/String;

    .line 6
    .line 7
    const/16 p4, 0x21

    .line 8
    .line 9
    if-le p2, p4, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p4, "https://cdn.jsdelivr.net/gh/SoulBrowser/SoulBrowser@master/License/"

    .line 17
    .line 18
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    aget-object p1, p1, p2

    .line 22
    .line 23
    const/4 p2, 0x3

    .line 24
    aget-object p1, p1, p2

    .line 25
    .line 26
    const-string p4, ".txt"

    .line 27
    .line 28
    invoke-static {p3, p1, p4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    move-object v2, p1

    .line 33
    move v5, p2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    aget-object p1, p1, p2

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    aget-object p1, p1, p2

    .line 39
    .line 40
    const/4 p2, 0x2

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLicenseList$4;->a:Lcom/mycompany/app/setting/SettingInfoLicenseList;

    .line 43
    .line 44
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->X1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 61
    .line 62
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView;

    .line 63
    .line 64
    new-instance v6, Lcom/mycompany/app/setting/SettingInfoLicenseList$8;

    .line 65
    .line 66
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingInfoLicenseList$8;-><init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v3, v2

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingInfoLicenseList;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 75
    .line 76
    new-instance p1, Lcom/mycompany/app/setting/SettingInfoLicenseList$9;

    .line 77
    .line 78
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingInfoLicenseList$9;-><init>(Lcom/mycompany/app/setting/SettingInfoLicenseList;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_2
    return-void
.end method
