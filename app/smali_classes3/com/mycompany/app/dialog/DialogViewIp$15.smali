.class Lcom/mycompany/app/dialog/DialogViewIp$15;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$15;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$15;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewIp$16;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewIp$16;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainApp;->d(Landroid/app/Activity;ILcom/mycompany/app/main/MainApp$AdLocalListener;)Lcom/mycompany/app/view/MyAdNative;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewIp;->M()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    iget-object v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v1, v3, v4, v5}, Lcom/mycompany/app/view/MyAdFrame;->a(Lcom/mycompany/app/view/MyAdNative;ZLandroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->m0:Z

    .line 52
    .line 53
    return-void
.end method
