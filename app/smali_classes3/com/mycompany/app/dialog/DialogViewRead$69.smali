.class Lcom/mycompany/app/dialog/DialogViewRead$69;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$69;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$69;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->c(Lcom/mycompany/app/dialog/DialogViewRead;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->x2:Ljava/util/List;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$69$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$69$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$69;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
