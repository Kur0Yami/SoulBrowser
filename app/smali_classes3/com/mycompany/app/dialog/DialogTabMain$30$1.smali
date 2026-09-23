.class Lcom/mycompany/app/dialog/DialogTabMain$30$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$30;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$30$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$30;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$30$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$30;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$30;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->K0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->K0:Z

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$30$1$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$30$1$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$30$1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L0:Z

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTabAdapter;->w(Z)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 61
    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :cond_5
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;

    .line 66
    .line 67
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/dialog/DialogTabMain$30$1$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$30$1;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method
