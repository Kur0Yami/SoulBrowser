.class Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture$18$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 29
    .line 30
    iget-object v4, v3, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, v3, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 47
    .line 48
    :cond_1
    iget-object v3, v3, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static {v1, v2, v3, v4, v4}, Lcom/mycompany/app/main/MainUtil;->J7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method
