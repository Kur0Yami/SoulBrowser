.class Lcom/mycompany/app/dialog/DialogViewSrc$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewSrc$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$10$1;->a:Lcom/mycompany/app/dialog/DialogViewSrc$10;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$10$1;->a:Lcom/mycompany/app/dialog/DialogViewSrc$10;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewSrc$10;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogNormal;->show()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewSrc$11;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewSrc$11;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
