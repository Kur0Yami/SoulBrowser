.class Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18$1;->c:Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCapture$18;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 35
    .line 36
    iget-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogNormal;->h()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 53
    .line 54
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-static {v1, v2, v0, v3, v3}, Lcom/mycompany/app/main/MainUtil;->I7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
