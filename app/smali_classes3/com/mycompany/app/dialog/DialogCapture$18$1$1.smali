.class Lcom/mycompany/app/dialog/DialogCapture$18$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture$18$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture$18$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->F7(Landroid/view/Window;ZZ)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogCapture$18$1$1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
