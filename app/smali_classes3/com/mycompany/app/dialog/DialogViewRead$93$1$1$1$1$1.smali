.class Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
