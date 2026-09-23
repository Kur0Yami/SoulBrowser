.class Lcom/mycompany/app/dialog/DialogSetVpn$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$11;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$11;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogSetVpn;->c0:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-interface {p3, p2}, Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetVpn;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method
