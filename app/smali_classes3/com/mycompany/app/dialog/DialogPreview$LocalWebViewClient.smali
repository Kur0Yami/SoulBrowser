.class Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogPreview;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->t0:Z

    .line 10
    .line 11
    iget-boolean v1, p1, Lcom/mycompany/app/dialog/DialogPreview;->e1:Z

    .line 12
    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogPreview;->f1:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogPreview;->e1:Z

    .line 32
    .line 33
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogPreview;->f1:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p2, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogPreview$36;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogPreview$36;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    iget p2, p1, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 49
    .line 50
    const/4 v1, 0x5

    .line 51
    if-ne p2, v1, :cond_5

    .line 52
    .line 53
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 54
    .line 55
    if-nez p2, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const-string v1, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.muted=true;ele.loop=true;ele.style.width=\'100%\';ele.setAttribute(\'controlsList\',\'nodownload\');if(ele.paused){ele.play();}}})();"

    .line 59
    .line 60
    invoke-static {p2, v1, v0}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogPreview;->C()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogPreview;->t0:Z

    .line 10
    .line 11
    iget p3, p1, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-ne p3, v0, :cond_2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p3, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.muted=true;ele.loop=true;ele.style.width=\'100%\';ele.setAttribute(\'controlsList\',\'nodownload\');if(ele.paused){ele.play();}}})();"

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p2, p3, v0}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogPreview;->C()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogPreview;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogPreview$37;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogPreview$37;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

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

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogPreview;

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogPreview;->d0:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    if-nez v0, :cond_2

    :goto_0
    return v1

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/mycompany/app/main/MainUtil;->v0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 8
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
