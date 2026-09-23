.class Lcom/mycompany/app/web/WebViewActivity$PdfFallback;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/mycompany/app/web/PdfPreview$Fallback;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;

.field public final synthetic b:Lcom/mycompany/app/view/MyWebCoord;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/view/MyWebCoord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$PdfFallback;->a:Lcom/mycompany/app/web/WebViewActivity;

    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$PdfFallback;->b:Lcom/mycompany/app/view/MyWebCoord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$PdfFallback;->b:Lcom/mycompany/app/view/MyWebCoord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$358;

    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$PdfFallback;->a:Lcom/mycompany/app/web/WebViewActivity;

    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$358;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
