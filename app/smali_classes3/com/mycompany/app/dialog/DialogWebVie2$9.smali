.class Lcom/mycompany/app/dialog/DialogWebVie2$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$9;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$9;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const v1, 0x3f19999a    # 0.6f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebVie2$10;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogWebVie2$10;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
