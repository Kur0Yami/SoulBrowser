.class Lcom/mycompany/app/web/WebViewActivity$145$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$145$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$145$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$145$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$145$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$145$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$145$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$145$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$145$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$145$1;->c:Lcom/mycompany/app/web/WebViewActivity$145;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$145;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->cg:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->dg:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->dg:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 17
    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v4, v3, Lcom/mycompany/app/web/WebNestView;->g:Z

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 38
    .line 39
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 48
    .line 49
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$146;

    .line 50
    .line 51
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$146;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eg:Z

    .line 58
    .line 59
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->fg:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$148;

    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$148;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    const/4 v4, 0x0

    .line 76
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/web/WebViewActivity;->N8(Lcom/mycompany/app/web/WebNestView;I)V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Yf:Z

    .line 80
    .line 81
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Zf:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 84
    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$147;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$147;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    :goto_0
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eg:Z

    .line 98
    .line 99
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->fg:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 102
    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    :goto_1
    return-void

    .line 106
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$148;

    .line 107
    .line 108
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$148;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    return-void
.end method
