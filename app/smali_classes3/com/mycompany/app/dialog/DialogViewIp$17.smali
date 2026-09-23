.class Lcom/mycompany/app/dialog/DialogViewIp$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$17;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$17;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdFrame;->f:Lcom/mycompany/app/image/ImageSizeListener;

    .line 9
    .line 10
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainApp;->f(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewIp$17$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewIp$17$1;-><init>(Lcom/mycompany/app/dialog/DialogViewIp$17;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
