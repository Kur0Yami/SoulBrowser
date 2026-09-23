.class Lcom/mycompany/app/dialog/DialogViewRead$91$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$91;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$91;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$91$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$91$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$91;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const/high16 v1, -0x1000000

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->C(Lcom/mycompany/app/dialog/DialogViewRead;I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$91$1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
