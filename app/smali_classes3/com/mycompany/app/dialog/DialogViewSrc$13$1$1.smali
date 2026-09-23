.class Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc$13$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$LocalWebViewClient;

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogViewSrc$LocalWebViewClient;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$LocalChromeClient;

    .line 21
    .line 22
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogViewSrc$LocalChromeClient;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$21;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogViewSrc$21;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebSrcView;->setListener(Lcom/mycompany/app/web/WebNestView$WebViewListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc$13;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$13$1$1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
