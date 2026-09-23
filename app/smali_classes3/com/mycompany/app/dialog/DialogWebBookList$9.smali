.class Lcom/mycompany/app/dialog/DialogWebBookList$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$9;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$9;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

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
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookList$10;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogWebBookList$10;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
