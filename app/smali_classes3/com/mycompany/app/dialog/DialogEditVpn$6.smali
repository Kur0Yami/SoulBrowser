.class Lcom/mycompany/app/dialog/DialogEditVpn$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn$6;->c:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget p2, Lcom/mycompany/app/dialog/DialogEditVpn;->t0:I

    .line 5
    .line 6
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditVpn$6;->c:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/mycompany/app/dialog/DialogEditVpn;->G(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
