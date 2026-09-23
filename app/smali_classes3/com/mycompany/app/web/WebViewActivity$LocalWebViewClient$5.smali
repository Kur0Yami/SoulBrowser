.class Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/webkit/SslErrorHandler;

.field public final synthetic f:Landroid/net/http/SslError;

.field public final synthetic g:Landroid/webkit/WebView;

.field public final synthetic h:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->h:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->c:Landroid/webkit/SslErrorHandler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->f:Landroid/net/http/SslError;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->g:Landroid/webkit/WebView;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->h:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->f:Landroid/net/http/SslError;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->c:Landroid/webkit/SslErrorHandler;

    .line 9
    .line 10
    if-eqz v3, :cond_3

    .line 11
    .line 12
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->s:Z

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget v4, Lcom/mycompany/app/web/WebSslView;->o:I

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    if-eq v4, v2, :cond_3

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    if-eq v4, v5, :cond_3

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    if-eq v4, v5, :cond_3

    .line 38
    .line 39
    const/4 v5, 0x5

    .line 40
    if-ne v4, v5, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;->g:Landroid/webkit/WebView;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    const-string v5, "https://"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    :goto_1
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 70
    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 78
    .line 79
    invoke-virtual {v4, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-virtual {v4, v5}, Lcom/mycompany/app/web/WebNestView;->G(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-boolean v2, v4, Lcom/mycompany/app/web/WebNestView;->c1:Z

    .line 89
    .line 90
    iget-object v2, v4, Lcom/mycompany/app/web/WebNestView;->b1:Lcom/mycompany/app/web/WebSslView;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v4, v3, v1}, Lcom/mycompany/app/web/WebNestView;->X(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iput-object v3, v4, Lcom/mycompany/app/web/WebNestView;->D1:Landroid/webkit/SslErrorHandler;

    .line 99
    .line 100
    iput-object v1, v4, Lcom/mycompany/app/web/WebNestView;->E1:Landroid/net/http/SslError;

    .line 101
    .line 102
    iget-object v1, v4, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 103
    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    new-instance v2, Lcom/mycompany/app/web/WebNestView$9;

    .line 108
    .line 109
    invoke-direct {v2, v4}, Lcom/mycompany/app/web/WebNestView$9;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :goto_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->A8()V

    .line 116
    .line 117
    .line 118
    return-void
.end method
