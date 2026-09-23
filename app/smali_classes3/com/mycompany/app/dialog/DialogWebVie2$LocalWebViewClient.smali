.class Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebVie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p3, :cond_4

    .line 13
    .line 14
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->m6(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    :goto_0
    move-object p3, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->n6(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->l6(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->w4(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->p0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    move v2, v0

    .line 55
    :cond_3
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->p0:Ljava/lang/String;

    .line 56
    .line 57
    :cond_4
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->reload()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 77
    .line 78
    if-eqz p2, :cond_7

    .line 79
    .line 80
    invoke-static {p1, v1}, Lcom/mycompany/app/dialog/DialogWebVie2;->D(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_7
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$5;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$5;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->B(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->h1:Z

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
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->i1:Ljava/lang/String;

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
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->h1:Z

    .line 36
    .line 37
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->i1:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$17;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogWebVie2$17;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->R0:Z

    .line 53
    .line 54
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$3;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$3;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 75
    .line 76
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2, v0, v2, v1}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->D(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 92
    .line 93
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$4;

    .line 94
    .line 95
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$4;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->B(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, p3, v0, v1}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$2;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient$2;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$18;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogWebVie2$18;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    if-eqz p2, :cond_4

    .line 10
    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-static {v0, v9}, Lcom/mycompany/app/dialog/DialogWebVie2;->B(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->v1(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->n0:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->n0:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/data/book/DataBookAds;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->o0:Z

    .line 75
    .line 76
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->o0:Z

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->g1:Lcom/mycompany/app/web/WebClean;

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    move-object v5, p1

    .line 92
    move-object v6, p2

    .line 93
    invoke-virtual/range {v3 .. v10}, Lcom/mycompany/app/web/WebClean;->j(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_4
    :goto_0
    return-object v2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 7
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    .line 8
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 11
    :cond_2
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->B(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 12
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    invoke-static {p1, v0, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->E(Lcom/mycompany/app/dialog/DialogWebVie2;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->B(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    invoke-static {p1, v0, p2}, Lcom/mycompany/app/dialog/DialogWebVie2;->E(Lcom/mycompany/app/dialog/DialogWebVie2;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
