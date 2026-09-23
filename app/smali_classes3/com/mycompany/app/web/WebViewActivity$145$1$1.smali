.class Lcom/mycompany/app/web/WebViewActivity$145$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$145$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$145$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$145$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$145$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$145$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$145$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$145$1;->c:Lcom/mycompany/app/web/WebViewActivity$145;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$145;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->E2()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$145;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$145$1$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$145$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$145$1$1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
