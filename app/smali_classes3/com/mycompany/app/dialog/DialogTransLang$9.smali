.class Lcom/mycompany/app/dialog/DialogTransLang$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$9;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$9;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTransLang;->E(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyWebSafe;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 52
    .line 53
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogRelative;->e(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$10;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$10;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method
