.class Lcom/mycompany/app/web/WebEmgDialog$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$35;->f:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebEmgDialog$35;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/web/WebEmgDialog;->K0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$35;->f:Lcom/mycompany/app/web/WebEmgDialog;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebEmgDialog;->B()V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/mycompany/app/web/WebEmgDialog$35;->c:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/mycompany/app/web/WebEmgDialog;->v(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Lcom/mycompany/app/web/WebEmgDialog;->u(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/web/WebEmgDialog;->t(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
