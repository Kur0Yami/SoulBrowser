.class Lcom/mycompany/app/setting/SettingDown$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown$10;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown$10;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDown;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown$10;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    sget p2, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 7
    .line 8
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingDown;->g2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDown;->i2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput-object p2, v0, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 30
    .line 31
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/setting/SettingDown$13;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingDown$13;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "image/*"

    .line 43
    .line 44
    invoke-direct {v1, v0, v3, p2, v2}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingDown;->h2:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 48
    .line 49
    new-instance p2, Lcom/mycompany/app/setting/SettingDown$14;

    .line 50
    .line 51
    invoke-direct {p2, v0}, Lcom/mycompany/app/setting/SettingDown$14;-><init>(Lcom/mycompany/app/setting/SettingDown;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 55
    .line 56
    .line 57
    return p1

    .line 58
    :cond_4
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    sget-object p2, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_6

    .line 81
    .line 82
    :cond_5
    const-string p2, ""

    .line 83
    .line 84
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->G:Ljava/lang/String;

    .line 85
    .line 86
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 87
    .line 88
    sput-object p2, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefAlbum;->t(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 96
    .line 97
    if-eqz p2, :cond_7

    .line 98
    .line 99
    sget v0, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 100
    .line 101
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 102
    .line 103
    .line 104
    :cond_7
    :goto_0
    return p1
.end method
