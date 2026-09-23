.class Lcom/mycompany/app/dialog/DialogTabMain$33$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$33;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$33$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$33;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$33$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$33;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$33;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->P0:I

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    iget-object v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v3, :cond_4

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x1

    .line 34
    iput-boolean v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v1, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebTabAdapter;->w(Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$33$1$1;

    .line 54
    .line 55
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/dialog/DialogTabMain$33$1$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$33$1;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    return-void
.end method
