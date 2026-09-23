.class Lcom/mycompany/app/dialog/DialogViewRead$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$14;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$14;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->s0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->m(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;->h()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->q0()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$120;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogViewRead$120;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
