.class Lcom/mycompany/app/setting/SettingBackup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$3;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$3;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    const/4 p3, 0x2

    .line 6
    if-eq p2, p3, :cond_5

    .line 7
    .line 8
    const/4 p4, 0x3

    .line 9
    if-eq p2, p4, :cond_4

    .line 10
    .line 11
    const/4 p4, 0x5

    .line 12
    if-eq p2, p4, :cond_2

    .line 13
    .line 14
    const/4 p4, 0x6

    .line 15
    if-eq p2, p4, :cond_1

    .line 16
    .line 17
    const/4 p4, 0x7

    .line 18
    if-eq p2, p4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, p3}, Lcom/mycompany/app/setting/SettingBackup;->S0(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2}, Lcom/mycompany/app/setting/SettingBackup;->S0(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_7

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingBackup;->R0()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingBackup;->P0()V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 49
    .line 50
    sget p3, Lnet/kaki87/soul2/testing/R$string;->ask_rem_pms:I

    .line 51
    .line 52
    sget p4, Lnet/kaki87/soul2/testing/R$string;->remove_pms:I

    .line 53
    .line 54
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$18;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingBackup$18;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p1, p3, p4, v0}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingBackup;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 63
    .line 64
    new-instance p3, Lcom/mycompany/app/setting/SettingBackup$19;

    .line 65
    .line 66
    invoke-direct {p3, p1}, Lcom/mycompany/app/setting/SettingBackup$19;-><init>(Lcom/mycompany/app/setting/SettingBackup;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Lcom/mycompany/app/setting/SettingBackup;->V0(Lcom/mycompany/app/gdrive/GdriveManager;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-string p3, "dat"

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_6

    .line 93
    .line 94
    const-string p2, "*/*"

    .line 95
    .line 96
    :cond_6
    new-instance p3, Landroid/content/Intent;

    .line 97
    .line 98
    const-string p4, "android.intent.action.OPEN_DOCUMENT"

    .line 99
    .line 100
    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p4, "android.intent.category.OPENABLE"

    .line 104
    .line 105
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const/16 p2, 0x41

    .line 112
    .line 113
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    const/16 p2, 0x9

    .line 117
    .line 118
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_7
    :goto_0
    return-void
.end method
