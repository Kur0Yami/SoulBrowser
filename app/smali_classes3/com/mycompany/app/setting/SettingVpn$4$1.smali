.class Lcom/mycompany/app/setting/SettingVpn$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/setting/SettingVpn$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVpn$4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVpn$4$1;->f:Lcom/mycompany/app/setting/SettingVpn$4;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingVpn$4$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVpn$4$1;->f:Lcom/mycompany/app/setting/SettingVpn$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVpn$4;->a:Lcom/mycompany/app/setting/SettingVpn;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/setting/SettingVpn;->j2:I

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/setting/SettingVpn$4$1;->c:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/setting/SettingVpn;->S0(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
