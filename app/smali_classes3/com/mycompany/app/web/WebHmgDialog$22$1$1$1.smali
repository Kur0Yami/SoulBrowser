.class Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog$22$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22$1$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog$22$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebHmgDialog$22;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebHmgDialog;->g0:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/web/WebHmgDialog;->w(Lcom/mycompany/app/web/WebHmgDialog;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22$1;->c:Lcom/mycompany/app/web/WebHmgDialog$22;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$22;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1$1;-><init>(Lcom/mycompany/app/web/WebHmgDialog$22$1$1$1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
