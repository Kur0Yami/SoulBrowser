.class Lcom/mycompany/app/setting/SettingSite$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSite;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSite$6;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSite;->e2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite$6;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite$6;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p2, v1, :cond_0

    .line 6
    .line 7
    new-instance p2, Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 10
    .line 11
    const-class v3, Lcom/mycompany/app/setting/SettingHome;

    .line 12
    .line 13
    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "EXTRA_TYPE"

    .line 17
    .line 18
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "EXTRA_PATH"

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSite;->Y1:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0xd

    .line 29
    .line 30
    invoke-virtual {v0, p2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-ne p2, p1, :cond_3

    .line 40
    .line 41
    sget-object p2, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "..home_link"

    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget p2, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sget-object p2, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    :goto_0
    return p1

    .line 64
    :cond_4
    sget p2, Lnet/kaki87/soul2/testing/R$string;->last_page:I

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    :goto_1
    sput-object v2, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 71
    .line 72
    const/16 v4, 0xe

    .line 73
    .line 74
    const-string v5, "mStartPage"

    .line 75
    .line 76
    invoke-static {v4, v3, v5, v2}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 80
    .line 81
    invoke-virtual {v0, v1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 82
    .line 83
    .line 84
    return p1
.end method
