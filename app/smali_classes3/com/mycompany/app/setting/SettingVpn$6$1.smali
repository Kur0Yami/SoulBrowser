.class Lcom/mycompany/app/setting/SettingVpn$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVpn$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVpn$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVpn$6$1;->c:Lcom/mycompany/app/setting/SettingVpn$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn$6$1;->c:Lcom/mycompany/app/setting/SettingVpn$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVpn$6;->c:Lcom/mycompany/app/setting/SettingVpn;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget v1, Lcom/mycompany/app/setting/SettingVpn;->j2:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingVpn;->Q0()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 20
    .line 21
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 22
    .line 23
    sget v10, Lnet/kaki87/soul2/testing/R$string;->vpn_server:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingVpn;->P0()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v11

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x1

    .line 31
    const/4 v9, 0x3

    .line 32
    invoke-direct/range {v8 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v8}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 41
    .line 42
    sget v4, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v9, 0x2

    .line 46
    const/4 v3, 0x4

    .line 47
    move v8, v7

    .line 48
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->I:Lcom/mycompany/app/vpn/VpnSvc;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/vpn/VpnSvc;->b()V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
