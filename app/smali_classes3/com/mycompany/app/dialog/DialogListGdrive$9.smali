.class Lcom/mycompany/app/dialog/DialogListGdrive$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogListGdrive;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$9;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$9;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogNormal;->show()V

    .line 13
    .line 14
    .line 15
    const-string v0, "/"

    .line 16
    .line 17
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->O:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogListGdrive;->o(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
