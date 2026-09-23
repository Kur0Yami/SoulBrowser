.class Lcom/mycompany/app/dialog/DialogDownUrl$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$15$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$15$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$15;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B1:Lcom/mycompany/app/web/WebSnsLoad;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->D(Lcom/mycompany/app/dialog/DialogDownUrl;Z)V

    .line 11
    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->T()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl$15$1$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownUrl$15$1$1;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl$15$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->H(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 45
    .line 46
    .line 47
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 48
    .line 49
    return-void
.end method
