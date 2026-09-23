.class Lcom/mycompany/app/web/WebViewActivity$287$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$287$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$287$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$287$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$287$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$287$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$287$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$287$1;->c:Lcom/mycompany/app/web/WebViewActivity$287;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$287;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->Q8(Lcom/mycompany/app/web/WebNestFrame;Lcom/mycompany/app/web/WebNestView;I)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$287;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$288;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$288;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 30
    .line 31
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$289;

    .line 32
    .line 33
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$289;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$290;

    .line 42
    .line 43
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$290;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$287;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$287$1$1$1;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$287$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$287$1$1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
