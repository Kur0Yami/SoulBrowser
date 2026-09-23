.class Lcom/mycompany/app/dialog/DialogViewTrans$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$22$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$22$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$22;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$22;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->P()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
