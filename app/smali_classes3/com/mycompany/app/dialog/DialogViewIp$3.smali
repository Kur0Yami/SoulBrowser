.class Lcom/mycompany/app/dialog/DialogViewIp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$3;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$3;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewIp;->B0:Z

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogViewIp;->B0:Z

    .line 15
    .line 16
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :goto_0
    return p3

    .line 21
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewIp$3$1;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewIp$3$1;-><init>(Lcom/mycompany/app/dialog/DialogViewIp$3;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return p3
.end method
