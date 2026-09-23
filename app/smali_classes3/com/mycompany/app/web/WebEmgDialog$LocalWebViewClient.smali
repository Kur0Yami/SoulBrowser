.class Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebEmgDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    new-instance p2, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient$1;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x3e8

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgDialog;->r(Lcom/mycompany/app/web/WebEmgDialog;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->E0:Z

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->F0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->E0:Z

    .line 55
    .line 56
    iput-object p2, p1, Lcom/mycompany/app/web/WebEmgDialog;->F0:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$20;

    .line 64
    .line 65
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebEmgDialog$20;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_0
    iput-object p2, p1, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 72
    .line 73
    const/4 p2, -0x1

    .line 74
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgDialog;->s(Lcom/mycompany/app/web/WebEmgDialog;I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p3, v0}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgDialog;->r(Lcom/mycompany/app/web/WebEmgDialog;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    iput-object p2, p1, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebEmgTask;->c(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebEmgTask;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebEmgDialog$21;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebEmgDialog$21;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgDialog;->r(Lcom/mycompany/app/web/WebEmgDialog;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgDialog;->r(Lcom/mycompany/app/web/WebEmgDialog;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgDialog;

    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgDialog;->r(Lcom/mycompany/app/web/WebEmgDialog;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
