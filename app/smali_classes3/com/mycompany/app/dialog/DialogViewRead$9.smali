.class Lcom/mycompany/app/dialog/DialogViewRead$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$9;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$9;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->f(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$9$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$9$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$9;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
