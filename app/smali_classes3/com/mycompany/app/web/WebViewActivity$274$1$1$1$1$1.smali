.class Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1;->c:Lcom/mycompany/app/web/WebViewActivity$274;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Nc:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$275;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$275;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method
