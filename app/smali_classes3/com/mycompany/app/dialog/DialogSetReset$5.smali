.class Lcom/mycompany/app/dialog/DialogSetReset$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetReset;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetReset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetReset$5;->c:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset$5;->c:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->b0:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->s0:Z

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->r0:Z

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetReset$5$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSetReset$5$1;-><init>(Lcom/mycompany/app/dialog/DialogSetReset$5;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
