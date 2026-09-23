.class Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 23
    .line 24
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance p2, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$3;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$3;-><init>(Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingLand;->u2:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->v2:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/setting/SettingLand;->u2:Z

    .line 33
    .line 34
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->v2:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$15;

    .line 42
    .line 43
    invoke-direct {v2, p1}, Lcom/mycompany/app/setting/SettingLand$15;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 56
    .line 57
    new-instance p2, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$2;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$2;-><init>(Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 70
    .line 71
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, v0, v2, v1}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 79
    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_5

    .line 87
    .line 88
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

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
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p2, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$1;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 33
    .line 34
    iget-object p3, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p2, p3, v0, v1}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_2

    .line 51
    .line 52
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

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
    new-instance p2, Lcom/mycompany/app/setting/SettingLand$16;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingLand$16;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->v1(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->i2:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->i2:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/data/book/DataBookAds;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingLand;->j2:Z

    .line 72
    .line 73
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingLand;->j2:Z

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLand;->t2:Lcom/mycompany/app/web/WebClean;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v4, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v7, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v8, v0, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    move-object v5, p1

    .line 89
    move-object v6, p2

    .line 90
    invoke-virtual/range {v3 .. v10}, Lcom/mycompany/app/web/WebClean;->j(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_4
    :goto_0
    return-object v2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingLand;

    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
