.class Lcom/mycompany/app/setting/SettingNews$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$11;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$11;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$11;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    sget-object p2, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->W0()Z

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
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->V0()V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/setting/SettingNews$20;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingNews$20;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v0, p1, v1}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, v0, Lcom/mycompany/app/setting/SettingNews;->h2:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/setting/SettingNews$21;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingNews$21;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p2, Lcom/mycompany/app/dialog/DialogTransLang;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/setting/SettingNews$22;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingNews$22;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 43
    .line 44
    .line 45
    return p1

    .line 46
    :cond_1
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    sget-object p2, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_5

    .line 57
    .line 58
    :cond_2
    const/4 p2, 0x0

    .line 59
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 60
    .line 61
    const-string v1, ""

    .line 62
    .line 63
    sput-object v1, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v1, p2}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-nez p2, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-string v1, "mNewsTitle"

    .line 78
    .line 79
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 80
    .line 81
    invoke-virtual {p2, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    const-string v1, "mNewsPick"

    .line 85
    .line 86
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p2, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 95
    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    sget-object v1, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->S0()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-virtual {p2, v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_1
    return p1
.end method
