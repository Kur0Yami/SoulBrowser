.class Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$138$1$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$138$1$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138$1$2;->c:Lcom/mycompany/app/web/WebViewActivity$138$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->P8(Lcom/mycompany/app/web/WebNestView;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
