.class Lcom/mycompany/app/setting/SettingSite$7;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSite$7;->a:Lcom/mycompany/app/setting/SettingSite;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite$7;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/4 p1, 0x3

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite$7;->a:Lcom/mycompany/app/setting/SettingSite;

    .line 3
    .line 4
    const/4 v1, 0x1

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
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "EXTRA_PATH"

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSite;->Y1:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/16 p1, 0xd

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p2, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "..home_link"

    .line 42
    .line 43
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    :goto_0
    return v1

    .line 50
    :cond_2
    sput-object v2, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 53
    .line 54
    const/16 v3, 0xe

    .line 55
    .line 56
    const-string v4, "mTabPage"

    .line 57
    .line 58
    invoke-static {v3, p2, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 62
    .line 63
    sget v0, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 66
    .line 67
    .line 68
    return v1
.end method
