.class public Lcom/mycompany/app/web/WebVideoPip;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebVideoPip$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;,
        Lcom/mycompany/app/web/WebVideoPip$EventReceiver;
    }
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Ljava/lang/String;

.field public c:Lcom/mycompany/app/main/MainActivity;

.field public f:Landroid/content/Context;

.field public g:Z

.field public h:Landroid/view/ViewGroup;

.field public i:Lcom/mycompany/app/view/MyCoverView;

.field public j:Lcom/mycompany/app/web/WebVideoPip$EventReceiver;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Lcom/mycompany/app/view/MyWebSafe;

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:I

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:J

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public static a(Lcom/mycompany/app/web/WebVideoPip;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoPip;->o:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoPip;->o:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$12;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$12;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoPip;->o:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoPip;->o:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$13;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$13;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static b(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$6;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$6;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, 0x12c

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static c(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/mycompany/app/web/WebVideoPip;->setWebSetting(Landroid/webkit/WebView;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$4;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$4;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/web/WebVideoPip;Lcom/mycompany/app/view/MyWebSafe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoPip;->setWebSettin2(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/web/WebVideoPip;Lcom/mycompany/app/view/MyWebSafe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoPip;->setWebSettin3(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static f(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoPip;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoPip;->q:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->i:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/mycompany/app/web/WebVideoPip;->l:J

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoPip;->s:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoPip;->i()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoPip;->v:Z

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoPip;->v:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    :goto_1
    return-void

    .line 41
    :cond_4
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$10;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoPip$10;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static g(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mycompany/app/web/WebVideoPip;->w:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$8;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$8;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x64

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$9;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$9;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private getYouSize()Lcom/mycompany/app/main/MainUtil$SizeItem;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoPip;->k:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/mycompany/app/web/WebVideoPip;->k:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Lorg/jsoup/Connection;->referrer(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->t3(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/web/WebReadTask;->v(Lorg/jsoup/nodes/Document;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    const-string v2, "streamingData"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "formats"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    const-string v2, "width"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-gtz v2, :cond_3

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    const-string v3, "height"

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-gtz v1, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    new-instance v3, Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 77
    .line 78
    invoke-direct {v3, v2, v1}, Lcom/mycompany/app/main/MainUtil$SizeItem;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :catch_0
    return-object v0
.end method

.method public static h(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/web/WebVideoPip;->getYouSize()Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 8
    .line 9
    iput v1, p0, Lcom/mycompany/app/web/WebVideoPip;->t:I

    .line 10
    .line 11
    iget v0, v0, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 12
    .line 13
    iput v0, p0, Lcom/mycompany/app/web/WebVideoPip;->u:I

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoPip;->s:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$11;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$11;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private setWebSettin2(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$LocalWebViewClient;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$LocalWebViewClient;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setWebSettin3(Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoPip;->o:Z

    .line 6
    .line 7
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$WebAppInterface;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "android"

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setWebSetting(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_1
    iget v1, p0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x2

    .line 20
    if-ne v1, v4, :cond_2

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move v1, v2

    .line 25
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v5, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v6, "net.kaki87.soul2.testing.ACTION_VIDEO_FRWD"

    .line 32
    .line 33
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v6, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 40
    .line 41
    const/high16 v7, 0xc000000

    .line 42
    .line 43
    invoke-static {v6, v2, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v5, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v6, "net.kaki87.soul2.testing.ACTION_VIDEO_PLAY"

    .line 50
    .line 51
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    iget-object v6, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v6, v3, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v5, Landroid/content/Intent;

    .line 64
    .line 65
    const-string v6, "net.kaki87.soul2.testing.ACTION_VIDEO_FFWD"

    .line 66
    .line 67
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0, v4, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 82
    .line 83
    const-string v4, "play"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 87
    .line 88
    const-string v4, "pause"

    .line 89
    .line 90
    :goto_1
    iget-boolean v5, p0, Lcom/mycompany/app/web/WebVideoPip;->g:Z

    .line 91
    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 95
    .line 96
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 100
    .line 101
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 102
    .line 103
    :goto_2
    iget-object v7, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v7, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v7, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v7, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v7, p0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v7, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v8, Landroid/app/RemoteAction;

    .line 127
    .line 128
    const-string v9, "frwd"

    .line 129
    .line 130
    invoke-direct {v8, v5, v9, v9, v2}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v2, Landroid/app/RemoteAction;

    .line 137
    .line 138
    invoke-direct {v2, v1, v4, v4, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v1, Landroid/app/RemoteAction;

    .line 145
    .line 146
    const-string v2, "ffwd"

    .line 147
    .line 148
    invoke-direct {v1, v6, v2, v2, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    iget v0, p0, Lcom/mycompany/app/web/WebVideoPip;->t:I

    .line 155
    .line 156
    iget v1, p0, Lcom/mycompany/app/web/WebVideoPip;->u:I

    .line 157
    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    if-nez v1, :cond_6

    .line 161
    .line 162
    :cond_5
    const/16 v0, 0x500

    .line 163
    .line 164
    const/16 v1, 0x2d0

    .line 165
    .line 166
    :cond_6
    :try_start_0
    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    .line 167
    .line 168
    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    .line 169
    .line 170
    invoke-direct {v2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v7}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e3(II)Landroid/util/Rational;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v2, v0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    .line 192
    :catch_0
    :goto_3
    return-void
.end method

.method public setYouPos(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    iput-wide p1, p0, Lcom/mycompany/app/web/WebVideoPip;->w:J

    .line 5
    .line 6
    return-void
.end method
