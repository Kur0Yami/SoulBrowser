.class Lcom/mycompany/app/web/WebViewActivity$116;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

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
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    move-object v1, p1

    .line 10
    check-cast v1, Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    invoke-static {v2, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebNestView;->setBackUrl(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->wf:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$116$2;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$116$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$116;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getBackHost()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {v1, p2, p1, v0}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getBackFrame()Lcom/mycompany/app/web/WebNestFrame;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 p2, 0x4

    .line 60
    if-eq p1, p2, :cond_5

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->xf:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 66
    .line 67
    if-nez p1, :cond_6

    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :cond_6
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$116$3;

    .line 71
    .line 72
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$116$3;-><init>(Lcom/mycompany/app/web/WebViewActivity$116;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of p3, p1, Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    if-nez p3, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    invoke-static {v1, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/mycompany/app/web/WebNestView;->setBackUrl(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->vf:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$116$1;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$116$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$116;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getBackHost()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-virtual {v0, p2, p1, p3}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->C(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    if-eqz p2, :cond_7

    .line 15
    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 32
    .line 33
    invoke-static {v2, p1, v9}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v3, v9}, Lcom/mycompany/app/main/MainUtil;->v1(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getBackUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getBackHost()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v7, v8}, Lcom/mycompany/app/data/book/DataBookAds;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v1, 0x1

    .line 73
    :goto_0
    invoke-static {v2, v8}, Lcom/mycompany/app/web/WebViewActivity;->K0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->q9:Lcom/mycompany/app/web/WebClean;

    .line 80
    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    move-object p1, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 86
    .line 87
    move-object v5, p1

    .line 88
    move-object v6, p2

    .line 89
    invoke-virtual/range {v3 .. v10}, Lcom/mycompany/app/web/WebClean;->j(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_1
    if-eqz p1, :cond_7

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_6
    move-object v6, p2

    .line 97
    if-eqz v10, :cond_7

    .line 98
    .line 99
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {p1, v6, v9, v10}, Lcom/mycompany/app/web/WebClean;->I(Landroid/content/Context;Landroid/webkit/WebResourceRequest;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_7
    :goto_2
    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    invoke-static {v1, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 8
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
