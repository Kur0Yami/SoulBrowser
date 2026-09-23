.class Lcom/mycompany/app/dialog/DialogWebVie2$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$10;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$10;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->W0:Lcom/mycompany/app/view/MyLineFrame;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->p1:Lcom/mycompany/app/web/WebTransControl;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebTransControl;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebTransControl;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->p1:Lcom/mycompany/app/web/WebTransControl;

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->f0:Z

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTransControl;->setDarkUser(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$26;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$26;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method
