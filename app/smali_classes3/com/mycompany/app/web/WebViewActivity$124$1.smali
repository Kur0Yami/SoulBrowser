.class Lcom/mycompany/app/web/WebViewActivity$124$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$124;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$124;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$124$1;->c:Lcom/mycompany/app/web/WebViewActivity$124;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$124$1;->c:Lcom/mycompany/app/web/WebViewActivity$124;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$124;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->U7(Landroid/webkit/WebView;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$125;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$125;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
