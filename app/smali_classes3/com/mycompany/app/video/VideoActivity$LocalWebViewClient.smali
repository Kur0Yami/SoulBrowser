.class Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

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
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

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
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->o3:Z

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->D0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->W3:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->X3:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/video/VideoActivity;->W3:Z

    .line 35
    .line 36
    iput-object p2, p1, Lcom/mycompany/app/video/VideoActivity;->X3:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$41;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/mycompany/app/video/VideoActivity$41;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    iget-boolean p2, p1, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 57
    .line 58
    if-nez p2, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    const-string v0, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.loop=true;ele.style.width=\'100%\';ele.setAttribute(\'controlsList\',\'nodownload\');if(ele.paused){ele.play();}}})();"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    const-string v0, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.style.width=\'100%\';ele.setAttribute(\'controlsList\',\'nodownload\');if(ele.paused){ele.play();}}})();"

    .line 69
    .line 70
    :goto_1
    invoke-static {p2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-static {p1}, Lcom/mycompany/app/video/VideoActivity;->F0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p1, Lcom/mycompany/app/video/VideoActivity;->o3:Z

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->D0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p2, p1, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    const-string v0, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.loop=true;ele.style.width=\'100%\';ele.setAttribute(\'controlsList\',\'nodownload\');if(ele.paused){ele.play();}}})();"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const-string v0, "(function(){var ele=document.querySelector(\"video\");if(ele){ele.style.width=\'100%\';ele.setAttribute(\'controlsList\',\'nodownload\');if(ele.paused){ele.play();}}})();"

    .line 32
    .line 33
    :goto_0
    invoke-static {p2, v0, p3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-static {p1}, Lcom/mycompany/app/video/VideoActivity;->F0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/video/VideoActivity$42;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/video/VideoActivity$42;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

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
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

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
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->D0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->D0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->O0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;->a:Lcom/mycompany/app/video/VideoActivity;

    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->D0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2}, Lcom/mycompany/app/video/VideoActivity;->O0(Lcom/mycompany/app/video/VideoActivity;Ljava/lang/String;)V

    return v1
.end method
