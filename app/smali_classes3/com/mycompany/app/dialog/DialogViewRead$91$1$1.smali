.class Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$91$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$91$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$91$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$91;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/high16 v2, -0x1000000

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogViewRead;->y0(IZ)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$91;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
