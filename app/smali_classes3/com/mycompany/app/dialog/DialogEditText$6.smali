.class Lcom/mycompany/app/dialog/DialogEditText$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditText$6;->c:Lcom/mycompany/app/dialog/DialogEditText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditText$6;->c:Lcom/mycompany/app/dialog/DialogEditText;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogEditText;->k0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogEditText;->k0:Z

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditText$6$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditText$6$1;-><init>(Lcom/mycompany/app/dialog/DialogEditText$6;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
