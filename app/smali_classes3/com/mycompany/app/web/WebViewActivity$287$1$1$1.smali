.class Lcom/mycompany/app/web/WebViewActivity$287$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$287$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$287$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$287$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$287$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$287$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$287$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$287$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$287$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$287$1;->c:Lcom/mycompany/app/web/WebViewActivity$287;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$287;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->gj:Landroid/os/Message;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->gj:Landroid/os/Message;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Fb:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Landroid/webkit/WebView$WebViewTransport;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4, v3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cc:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cc:Z

    .line 38
    .line 39
    return-void
.end method
