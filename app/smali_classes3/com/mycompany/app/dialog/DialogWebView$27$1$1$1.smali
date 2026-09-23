.class Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView$27$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogWebView;->g1:Z

    .line 16
    .line 17
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "android"

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method
