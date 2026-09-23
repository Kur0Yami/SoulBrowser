.class Lcom/mycompany/app/setting/SettingVpn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVpn$4;->a:Lcom/mycompany/app/setting/SettingVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn$4;->a:Lcom/mycompany/app/setting/SettingVpn;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingVpn$4$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/setting/SettingVpn$4$1;-><init>(Lcom/mycompany/app/setting/SettingVpn$4;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
