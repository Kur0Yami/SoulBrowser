.class Lcom/mycompany/app/dialog/DialogInfo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogInfo$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$2$1;->a:Lcom/mycompany/app/dialog/DialogInfo$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$2$1;->a:Lcom/mycompany/app/dialog/DialogInfo$2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogInfo$2;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogInfo$3;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogInfo$3;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
