.class Lcom/mycompany/app/web/WebReadTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebReadTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$2;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$2;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 48
    .line 49
    .line 50
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v5, 0x1e

    .line 53
    .line 54
    if-ge v4, v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainApp;->L(Landroid/content/Context;Z)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainApp;->O(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask;->s:Landroid/view/ViewGroup;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$2$1;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebReadTask$2$1;-><init>(Lcom/mycompany/app/web/WebReadTask$2;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method
