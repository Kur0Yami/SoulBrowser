.class Lcom/mycompany/app/dialog/DialogTransMsg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransMsg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransMsg$3;->c:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransMsg$3;->c:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTransMsg;->g0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTransMsg;->g0:Z

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogTransMsg$3$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTransMsg$3$1;-><init>(Lcom/mycompany/app/dialog/DialogTransMsg$3;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
