.class Lcom/mycompany/app/dialog/DialogViewTrans$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$35;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$35;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->F0:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->E0:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 14
    .line 15
    mul-int/lit8 v3, v3, 0x4

    .line 16
    .line 17
    const/16 v4, 0x50

    .line 18
    .line 19
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
