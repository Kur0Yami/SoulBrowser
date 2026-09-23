.class Lcom/mycompany/app/dialog/DialogViewRead$84$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$84;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$84;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$84$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$84;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$84$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$84;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$84;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->z(Lcom/mycompany/app/dialog/DialogViewRead;Landroid/webkit/WebView;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$84$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$84$1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
