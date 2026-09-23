.class Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "x.com"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    const-string v1, "(function(){mySns(document);})();"

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
