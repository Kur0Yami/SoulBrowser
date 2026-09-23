.class Lcom/mycompany/app/dialog/DialogDeleteItem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDeleteItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteItem$3;->c:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteItem$3;->c:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDeleteItem;->B(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogDeleteItem$3$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDeleteItem$3$1;-><init>(Lcom/mycompany/app/dialog/DialogDeleteItem$3;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
