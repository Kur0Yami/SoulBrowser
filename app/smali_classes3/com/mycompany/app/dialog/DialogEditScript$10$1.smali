.class Lcom/mycompany/app/dialog/DialogEditScript$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$10$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$10;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$10$1;->c:Lcom/mycompany/app/dialog/DialogEditScript$10;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditScript$10;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$LocalWebViewClient;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$LocalWebViewClient;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$LocalChromeClient;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$LocalChromeClient;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$11;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$11;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebSrcView;->setListener(Lcom/mycompany/app/web/WebNestView$WebViewListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditScript$10$1$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditScript$10$1$1;-><init>(Lcom/mycompany/app/dialog/DialogEditScript$10$1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
