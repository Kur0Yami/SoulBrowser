.class Lcom/mycompany/app/web/WebViewActivity$132$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebViewActivity$TabViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$132$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$132$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$132$1$2;->a:Lcom/mycompany/app/web/WebViewActivity$132$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$132$1$2;->a:Lcom/mycompany/app/web/WebViewActivity$132$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$132$1;->c:Lcom/mycompany/app/web/WebViewActivity$132;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$132$1$2$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$132$1$2$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$132$1$2;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
