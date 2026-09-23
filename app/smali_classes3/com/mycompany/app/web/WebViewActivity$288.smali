.class Lcom/mycompany/app/web/WebViewActivity$288;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    instance-of v1, p1, Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {v2, v0, p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->x0(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {p3, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p3, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    instance-of v0, p1, Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/mycompany/app/web/WebNestView;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget p1, p3, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p3, p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->x0(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput-object p2, p3, Lcom/mycompany/app/web/WebViewActivity;->Ib:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p3, Lcom/mycompany/app/web/WebViewActivity;->Jb:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->C(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    invoke-static {v1, p1, v8}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Ib:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v8, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1, v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->i3(Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x2

    .line 49
    iput p2, v1, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-static {p2, v1, v8, p1}, Lcom/mycompany/app/web/WebViewActivity;->x0(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    iget-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Ib:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Jb:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->q9:Lcom/mycompany/app/web/WebClean;

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    move-object p1, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    move-object v4, p1

    .line 70
    move-object v5, p2

    .line 71
    invoke-virtual/range {v2 .. v9}, Lcom/mycompany/app/web/WebClean;->j(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    if-eqz p1, :cond_4

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_4

    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 14
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 15
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 16
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->H0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, p2, v1}, Lcom/mycompany/app/web/WebViewActivity;->x0(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 19
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ib:Ljava/lang/String;

    .line 20
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Jb:Ljava/lang/String;

    :cond_4
    :goto_0
    return v2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$288;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 5
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->H0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, p2, v1}, Lcom/mycompany/app/web/WebViewActivity;->x0(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Hb:I

    .line 8
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ib:Ljava/lang/String;

    .line 9
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Jb:Ljava/lang/String;

    :goto_0
    return v2
.end method
