.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->u:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->v:Z

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->w:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->w:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v4, v2, v5}, Lcom/mycompany/app/web/WebTabAdapter;->x(ZZ)V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->x:Z

    .line 22
    .line 23
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->y:Z

    .line 24
    .line 25
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->z:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12$1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
