.class Lcom/mycompany/app/setting/SettingPassList$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPassList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList$10;->a:Lcom/mycompany/app/setting/SettingPassList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingPassList;->t2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$10;->a:Lcom/mycompany/app/setting/SettingPassList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingPassList;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList$10;->a:Lcom/mycompany/app/setting/SettingPassList;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p2, v0, :cond_4

    .line 5
    .line 6
    sget p2, Lcom/mycompany/app/setting/SettingPassList;->t2:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingPassList;->S0()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 24
    .line 25
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/mycompany/app/setting/SettingPassAdapter;->w()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogPassSave;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogPassSave;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 42
    .line 43
    new-instance v1, Lcom/mycompany/app/setting/SettingPassList$17;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingPassList$17;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :cond_3
    :goto_0
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_password:I

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v1, "csv"

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    const-string p2, "*/*"

    .line 75
    .line 76
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .line 77
    .line 78
    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "android.intent.category.OPENABLE"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const/16 p2, 0x41

    .line 92
    .line 93
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    const/16 p2, 0x9

    .line 97
    .line 98
    invoke-virtual {p1, v1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    :catch_0
    :goto_1
    return v0
.end method
