.class Lcom/mycompany/app/dialog/DialogTabMain$41$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$41;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->b:Z

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->j1:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/web/WebTabAdapter;->x(ZZ)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$41$1$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$41$1$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$41$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
