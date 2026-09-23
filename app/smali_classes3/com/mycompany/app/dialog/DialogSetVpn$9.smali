.class Lcom/mycompany/app/dialog/DialogSetVpn$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$9;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$9;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->D()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 16
    .line 17
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 18
    .line 19
    sget v10, Lnet/kaki87/soul2/testing/R$string;->vpn_server:I

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->C()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v9, 0x1

    .line 28
    invoke-direct/range {v8 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v8}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 37
    .line 38
    sget v4, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v3, 0x2

    .line 43
    move v8, v7

    .line 44
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->I:Lcom/mycompany/app/vpn/VpnSvc;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/vpn/VpnSvc;->b()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
