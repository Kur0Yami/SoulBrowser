.class Lcom/mycompany/app/web/WebViewActivity$138$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138$1$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$138$1$2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$138$1$2;->c:Lcom/mycompany/app/web/WebViewActivity$138$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/web/WebViewActivity;->Q8(Lcom/mycompany/app/web/WebNestFrame;Lcom/mycompany/app/web/WebNestView;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138$1$2;->c:Lcom/mycompany/app/web/WebViewActivity$138$1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138$1;->c:Lcom/mycompany/app/web/WebViewActivity$138;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$138;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$139;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$139;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
