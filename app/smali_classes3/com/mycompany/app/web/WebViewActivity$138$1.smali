.class Lcom/mycompany/app/web/WebViewActivity$138$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$138;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$138;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebNestView;->g:Z

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$138$1$1;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebViewActivity$138$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$138$1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$139;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$139;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->r3()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->N8(Lcom/mycompany/app/web/WebNestView;I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$138$1$2;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$138$1$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$138$1;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 84
    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    :goto_1
    return-void

    .line 88
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$139;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$139;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method
