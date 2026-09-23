.class Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$7$1$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$7$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$7$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$7;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$7;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->i0:Lcom/mycompany/app/web/WebTransControl;

    .line 15
    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h1:Lcom/mycompany/app/web/WebTransControl;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebTransControl;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebTransControl;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->h1:Lcom/mycompany/app/web/WebTransControl;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$17;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$17;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    return-void
.end method
