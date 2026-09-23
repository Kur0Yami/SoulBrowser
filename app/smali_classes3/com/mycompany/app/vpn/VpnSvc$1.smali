.class Lcom/mycompany/app/vpn/VpnSvc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/vpn/VpnSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/vpn/VpnSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/vpn/VpnSvc$1;->c:Lcom/mycompany/app/vpn/VpnSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc$1;->c:Lcom/mycompany/app/vpn/VpnSvc;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/vpn/VpnSvc;->a(Lcom/mycompany/app/vpn/VpnSvc;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainApp;->D(Lcom/mycompany/app/vpn/VpnSvc;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
