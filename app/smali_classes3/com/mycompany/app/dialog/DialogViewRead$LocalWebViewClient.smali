.class Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->d0:Z

    .line 8
    .line 9
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->j(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->e0(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->R()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->j:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->Y1:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->i(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->Y0:Z

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->e0:Z

    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$2;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$2;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->a(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->z2:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->A2:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->z2:Z

    .line 36
    .line 37
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->A2:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$85;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogViewRead$85;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->j(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->i(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->A0:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_4

    .line 65
    .line 66
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 67
    .line 68
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->A0:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$62;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogViewRead$62;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->p:Z

    .line 83
    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->p:Z

    .line 87
    .line 88
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->h(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_2
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p3, v0}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->a(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewRead$86;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogViewRead$86;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

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
    if-eqz p2, :cond_5

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
    goto :goto_2

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
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->a(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :catch_0
    :cond_2
    :goto_0
    move-object p2, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const-string v0, "soul_user_font.ttf"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->j3(Landroid/content/Context;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    new-instance p2, Landroid/webkit/WebResourceResponse;

    .line 60
    .line 61
    const-string v0, "application/x-font-ttf"

    .line 62
    .line 63
    const-string v2, "UTF-8"

    .line 64
    .line 65
    invoke-direct {p2, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_1
    :cond_4
    move-object p1, v1

    .line 70
    :catch_2
    if-eqz p1, :cond_2

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    if-eqz p2, :cond_5

    .line 77
    .line 78
    return-object p2

    .line 79
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 8
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->a(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f0:Z

    if-eqz v0, :cond_4

    .line 14
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;->b(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead;->a(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f0:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    .line 6
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
