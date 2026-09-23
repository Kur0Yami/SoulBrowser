.class Lcom/mycompany/app/dialog/DialogViewRead$60;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$60;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$60;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->s0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->V()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setLoad(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->s0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    return-void
.end method
