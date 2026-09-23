.class Lcom/mycompany/app/dialog/DialogSetVpn$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetVpn$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8$1;->c:Lcom/mycompany/app/dialog/DialogSetVpn$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$8$1;->c:Lcom/mycompany/app/dialog/DialogSetVpn$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetVpn$8;->c:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->D()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 18
    .line 19
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 20
    .line 21
    sget v10, Lnet/kaki87/soul2/testing/R$string;->vpn_server:I

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->C()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v9, 0x1

    .line 30
    invoke-direct/range {v8 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v8}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 39
    .line 40
    sget v4, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v3, 0x2

    .line 45
    move v8, v7

    .line 46
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->I:Lcom/mycompany/app/vpn/VpnSvc;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/vpn/VpnSvc;->b()V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method
