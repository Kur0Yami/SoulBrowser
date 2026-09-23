.class Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$41$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$41$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$41$3;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->e:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v2, v1}, Lcom/mycompany/app/quick/TabSubView;->setDeleted(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
