.class Lcom/mycompany/app/vpn/VpnSvc$3;
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
    iput-object p1, p0, Lcom/mycompany/app/vpn/VpnSvc$3;->c:Lcom/mycompany/app/vpn/VpnSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnSvc$3;->c:Lcom/mycompany/app/vpn/VpnSvc;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lnet/kaki87/soul2/testing/R$string;->vpn_deactive:I

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
