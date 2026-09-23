.class Lcom/mycompany/app/setting/SettingPassword$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingPassword;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassword;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassword$5;->b:Lcom/mycompany/app/setting/SettingPassword;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingPassword$5;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingPassword;->b2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword$5;->b:Lcom/mycompany/app/setting/SettingPassword;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->Y:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingPassword$5;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword$5;->b:Lcom/mycompany/app/setting/SettingPassword;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "EXTRA_PASS"

    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "EXTRA_TYPE"

    .line 29
    .line 30
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 35
    .line 36
    .line 37
    return p2

    .line 38
    :cond_1
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 39
    .line 40
    if-ne v2, p1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v1, p2}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    sput-object v1, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefSecret;->v(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 70
    .line 71
    aget v2, v2, p1

    .line 72
    .line 73
    const/4 v3, 0x7

    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 75
    .line 76
    .line 77
    :cond_4
    if-nez p1, :cond_5

    .line 78
    .line 79
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    sput-boolean p1, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 87
    .line 88
    const/16 v2, 0x9

    .line 89
    .line 90
    const-string v3, "mLoginLock"

    .line 91
    .line 92
    invoke-static {v2, v1, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    sget p1, Lcom/mycompany/app/setting/SettingPassword;->b2:I

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingPassword;->Q0()V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    return p2
.end method
