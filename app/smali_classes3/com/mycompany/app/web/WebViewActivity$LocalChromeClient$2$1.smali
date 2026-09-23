.class Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2;->c:Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Oi:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    const-string v2, "(function(){mySns(document);})();"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "x.com"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1$1;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalChromeClient$2$1;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v2, 0x3e8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
