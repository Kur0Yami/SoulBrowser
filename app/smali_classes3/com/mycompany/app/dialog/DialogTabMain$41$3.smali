.class Lcom/mycompany/app/dialog/DialogTabMain$41$3;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$3;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$3;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->d:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, v2, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v3, v1}, Lcom/mycompany/app/web/WebTabAdapter;->y(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->e:Z

    .line 24
    .line 25
    iget-object v0, v2, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$41$3;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
