.class Lcom/mycompany/app/web/WebEmgDialog$23$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog$23$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog$23$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$23$1$1$1;->c:Lcom/mycompany/app/web/WebEmgDialog$23$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$23$1$1$1;->c:Lcom/mycompany/app/web/WebEmgDialog$23$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog$23$1$1;->c:Lcom/mycompany/app/web/WebEmgDialog$23$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog$23$1;->c:Lcom/mycompany/app/web/WebEmgDialog$23;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebEmgDialog$23;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/web/WebEmgDialog;->w(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog$23$1;->c:Lcom/mycompany/app/web/WebEmgDialog$23;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/mycompany/app/web/WebEmgDialog$23;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebEmgDialog;->G()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog$23$1;->c:Lcom/mycompany/app/web/WebEmgDialog$23;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog$23;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$23$1$1$1$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebEmgDialog$23$1$1$1$1;-><init>(Lcom/mycompany/app/web/WebEmgDialog$23$1$1$1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
