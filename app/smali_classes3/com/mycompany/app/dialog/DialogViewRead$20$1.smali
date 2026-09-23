.class Lcom/mycompany/app/dialog/DialogViewRead$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$20$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$20$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$20;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$20;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->N()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->T()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->S()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->M()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$20$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$20$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$20$1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
