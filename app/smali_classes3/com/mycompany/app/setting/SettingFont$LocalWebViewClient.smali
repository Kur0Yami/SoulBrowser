.class Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingFont;

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
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingFont;->C2:Z

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingFont;->D2:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Lcom/mycompany/app/setting/SettingFont;->C2:Z

    .line 33
    .line 34
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingFont;->D2:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Lcom/mycompany/app/setting/SettingFont$22;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingFont$22;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingFont;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

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
    new-instance p2, Lcom/mycompany/app/setting/SettingFont$23;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingFont$23;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

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
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;->a:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

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
    if-eqz p2, :cond_6

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
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_5

    .line 35
    .line 36
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "soul_user_font.ttf"

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    :try_start_0
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    new-instance p2, Landroid/webkit/WebResourceResponse;

    .line 67
    .line 68
    const-string v0, "application/x-font-ttf"

    .line 69
    .line 70
    const-string v2, "UTF-8"

    .line 71
    .line 72
    invoke-direct {p2, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    :cond_4
    move-object p1, v1

    .line 77
    :catch_1
    if-eqz p1, :cond_5

    .line 78
    .line 79
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    .line 82
    :catch_2
    :cond_5
    :goto_0
    move-object p2, v1

    .line 83
    :goto_1
    if-eqz p2, :cond_6

    .line 84
    .line 85
    return-object p2

    .line 86
    :cond_6
    :goto_2
    return-object v1
.end method
