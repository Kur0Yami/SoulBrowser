.class Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$6;->c:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$6;->c:Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->M9:F

    .line 6
    .line 7
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->N9:F

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    const-string v2, "document.body.style.width=(window.visualViewport!=undefined?window.visualViewport.width:window.innerWidth)+\'px\';"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->L9:Z

    .line 20
    .line 21
    return-void
.end method
