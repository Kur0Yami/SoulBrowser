.class Lcom/mycompany/app/dialog/DialogViewRead$39$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$39;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$39;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$39$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$39;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$39$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$39;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$39;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->e(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->w1:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
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
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$39$1$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$39$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$39$1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
