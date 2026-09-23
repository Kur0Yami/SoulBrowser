.class Lcom/mycompany/app/dialog/DialogSetVpn$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogSetVpn$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn$6;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$6$1;->f:Lcom/mycompany/app/dialog/DialogSetVpn$6;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetVpn$6$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$6$1;->f:Lcom/mycompany/app/dialog/DialogSetVpn$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetVpn$6;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogSetVpn;->p0:I

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$6$1;->c:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetVpn;->F(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
